global class ProductLinkingCouponCodeBatchClass implements Database.Batchable<SObject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
  return Database.getQueryLocator('SELECT Id , External_id__c From coupons_codes__c');
    }
    global void execute(Database.BatchableContext bc, List<coupons_codes__c> couponsList){
    Map<string,Id>  ccExternalIdWithCcIdMap=new Map<string,Id>();
             for(coupons_codes__c coupon:couponsList){
                ccExternalIdWithCcIdMap.put(coupon.External_id__c, coupon.Id);
             }
List<product2> products = [SELECT Id,Coupon_code_id__c,coupon_code__c FROM product2 Where coupon_code_id__c IN :ccExternalIdWithCcIdMap.keyset()];
  for(product2 product:products){
    product.coupon_code__c = ccExternalIdWithCcIdMap.get(product.Coupon_code_id__c);
    products.add(product);
  }
      update products;
    }

    global void finish(Database.BatchableContext bc){
        List<string> RecepientsList = new List<string>{'vishnu@gmail.com'};
        String subject = 'ProductLinkingCouponCodeBatchClass has been processed  succesfully.';
        string body = 'Dear hemavathi, \n\t All the products have been linked to their Respective coupon codes.';
        UserTriggerHandler.sendSimpleEmail( RecepientsList,subject,body); 

    }
    

    }

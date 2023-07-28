public  class SampleQueueableAC implements Queueable{
            public Contact con;
    public SampleQueueableAC(Contact con){
        this.con = con;

    }
    public void execute(QueueableContext qc){
           insert con;

    }
    

    }
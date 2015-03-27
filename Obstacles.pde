class Obstacles
{
  
  Map<String, PVector> obstacles = new HashMap<String,PVector>();
  int num_tiles;
  
  Obstacles(int num_tiles){
    
    this.num_tiles = num_tiles;
    //create obstacles
    obstacles.put("4.0", new PVector(4,0));
    obstacles.put("4.1", new PVector(4,1));
    obstacles.put("4.2", new PVector(4,2));
    obstacles.put("4.3", new PVector(4,3));
    obstacles.put("5.3", new PVector(5,3));
    obstacles.put("6.3", new PVector(6,3));
    
    obstacles.put("9.0", new PVector(9,0));
    obstacles.put("9.1", new PVector(9,1));
    obstacles.put("9.2", new PVector(9,2));
    obstacles.put("9.3", new PVector(9,3));
    
    obstacles.put("14.0", new PVector(14,0));
    obstacles.put("14.1", new PVector(14,1));
    obstacles.put("14.2", new PVector(14,2));
    obstacles.put("14.3", new PVector(14,3));
    obstacles.put("13.3", new PVector(13,3));
    obstacles.put("12.3", new PVector(12,3));
    
    obstacles.put("1.1", new PVector(1,1));
    obstacles.put("2.1", new PVector(2,1));
    
    obstacles.put("6.1", new PVector(6,1));
    obstacles.put("7.1", new PVector(7,1));
    
    obstacles.put("12.0", new PVector(12,0));
    obstacles.put("12.1", new PVector(12,1));
    
    obstacles.put("0.3", new PVector(0,3));
    obstacles.put("1.3", new PVector(1,3));
    
    obstacles.put("17.1", new PVector(17,1));
    obstacles.put("18.1", new PVector(18,1));
    obstacles.put("16.2", new PVector(16,2));
    obstacles.put("17.2", new PVector(17,2));
    obstacles.put("18.2", new PVector(18,2));
    obstacles.put("19.2", new PVector(19,2));
    obstacles.put("17.3", new PVector(17,3));
    obstacles.put("18.3", new PVector(18,3));
    obstacles.put("16.4", new PVector(16,4));
    obstacles.put("17.4", new PVector(17,4));
    obstacles.put("18.4", new PVector(18,4));
    obstacles.put("19.4", new PVector(19,4));
    obstacles.put("17.5", new PVector(17,5));
    obstacles.put("18.5", new PVector(18,5));
    
    obstacles.put("0.6", new PVector(0,6));
    obstacles.put("1.6", new PVector(1,6));
    obstacles.put("2.6", new PVector(2,6));
    obstacles.put("3.6", new PVector(3,6));
    obstacles.put("4.6", new PVector(4,6));
    obstacles.put("5.6", new PVector(5,6));
    obstacles.put("6.6", new PVector(6,6));
    
    obstacles.put("9.6", new PVector(9,6));
    obstacles.put("19.6", new PVector(19,6));
    obstacles.put("11.6", new PVector(11,6));
   
    obstacles.put("14.6", new PVector(14,6));
    obstacles.put("14.7", new PVector(14,7));
    obstacles.put("15.7", new PVector(15,7));
    obstacles.put("16.7", new PVector(16,7));
    obstacles.put("17.7", new PVector(17,7));
    obstacles.put("18.7", new PVector(18,7));
    obstacles.put("19.7", new PVector(19,7));   
    obstacles.put("20.7", new PVector(20,7));

    obstacles.put("3.8", new PVector(3,8));
    obstacles.put("2.9", new PVector(2,9));
    obstacles.put("3.9", new PVector(3,9));
    obstacles.put("4.9", new PVector(4,9));
    obstacles.put("3.10", new PVector(3,10));
   
    obstacles.put("3.12", new PVector(3,12));
    obstacles.put("2.13", new PVector(2,13));
     obstacles.put("3.13", new PVector(3,13));
    obstacles.put("4.13", new PVector(4,13));
    obstacles.put("3.14", new PVector(3,14));    

    obstacles.put("7.8", new PVector(7,8));
    obstacles.put("6.9", new PVector(6,9));
    obstacles.put("7.9", new PVector(7,9));
    obstacles.put("8.9", new PVector(8,9));
    obstacles.put("7.10", new PVector(7,10));
    
    obstacles.put("7.12", new PVector(7,12));
    obstacles.put("6.13", new PVector(6,13));
    obstacles.put("7.13", new PVector(7,13));
    obstacles.put("8.13", new PVector(8,13));
    obstacles.put("7.14", new PVector(7,14));    
    
    obstacles.put("2.18", new PVector(2,18));
    obstacles.put("2.17", new PVector(2,17));
    obstacles.put("3.17", new PVector(3,17));
    obstacles.put("4.17", new PVector(4,17));
    obstacles.put("5.17", new PVector(5,17)); 
    obstacles.put("6.17", new PVector(6,17));
    obstacles.put("7.17", new PVector(7,17));
    obstacles.put("8.17", new PVector(8,17));
    obstacles.put("9.17", new PVector(9,17));
    obstacles.put("10.17", new PVector(10,17));
    obstacles.put("11.17", new PVector(11,17));
    obstacles.put("12.17", new PVector(12,17));
    obstacles.put("13.17", new PVector(13,17));   
    obstacles.put("14.17", new PVector(14,17));
    obstacles.put("15.17", new PVector(15,17));
    obstacles.put("16.17", new PVector(16,17));
    obstacles.put("17.17", new PVector(17,17));
    obstacles.put("17.16", new PVector(17,16));
    obstacles.put("17.15", new PVector(17,15));
    obstacles.put("17.14", new PVector(17,14));
    obstacles.put("16.14", new PVector(16,14));
    obstacles.put("15.14", new PVector(15,14));
    obstacles.put("14.14", new PVector(14,14));
    obstacles.put("13.14", new PVector(13,14));
    obstacles.put("12.14", new PVector(12,14));
    obstacles.put("11.14", new PVector(11,14));
    obstacles.put("10.14", new PVector(10,14));
    
    obstacles.put("10.13", new PVector(10,13));
    obstacles.put("11.12", new PVector(11,12));
    obstacles.put("12.11", new PVector(12,11));
    obstacles.put("13.10", new PVector(13,10));
    
    obstacles.put("16.8", new PVector(16,8));
    obstacles.put("16.9", new PVector(16,9));
    obstacles.put("16.10", new PVector(16,10));
    obstacles.put("16.11", new PVector(16,11));
    obstacles.put("17.11", new PVector(17,11));
    obstacles.put("18.11", new PVector(18,11));
    obstacles.put("19.10", new PVector(19,10));
    obstacles.put("20.11", new PVector(20,11));
    
    for (int i = -1; i <= this.num_tiles; i++){
    obstacles.put(""+(-1)+"."+i, new PVector(-1,i));
    obstacles.put(""+(this.num_tiles)+"."+i, new PVector(this.num_tiles,i));
    obstacles.put(""+i+"."+(-1), new PVector(i,-1));
    obstacles.put(""+i+"."+(this.num_tiles), new PVector(i,this.num_tiles));
    
    }
    

  }  
  
   Map<String,PVector> obstacle_map(){
     
     return obstacles;
   
   }
   
     ArrayList<PVector> obstacle_coordinates(){
       
     ArrayList<PVector> obstacle_coordinates = new ArrayList<PVector>(obstacles.values());
     return obstacle_coordinates;
   
   }
  
}

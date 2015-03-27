class Division {
  
  
  //Vertex node;
  int tileSize;
  Map<String, Vertex>  graph = new HashMap<String, Vertex>(); 
  
  
  Division(int numberoftiles, Map<String,PVector> obstacle_coordinates){
    
   // generate all node objects
    for(int i = -1; i < numberoftiles+1; i++){
      for(int j = -1; j < numberoftiles+1; j++){
      
       Vertex nodetemp = new Vertex(i,j);
       
       graph.put(""+(i)+"."+(j), nodetemp);
       
      
    }
  }

  
   tileSize = width/numberoftiles;

  
  
  //create edges between adjacent tiles
  for(int i = 0; i < numberoftiles; i++){
    for(int j = 0; j < numberoftiles; j++){
     
      Vertex node = graph.get(""+(i)+"."+(j));
      //
      //draw node locations
      fill(230);
      ellipse((i*tileSize + 0.5*tileSize),(j*tileSize + 0.5*tileSize), 5,5);
      //
      if (obstacle_coordinates.containsKey(""+(int)node.coordinates.x+"."+(int)node.coordinates.y)){continue;}
         //cardinal neighbours
        Vertex[] neighbours = new Vertex[]{  graph.get(""+(i)+"."+(j-1)), graph.get(""+(i+1)+"."+(j)), graph.get(""+(i)+"."+(j+1)), graph.get(""+(i-1)+"."+(j))};
    
    //to test 8 neighbours, uncomment
    // Vertex[] neighbours = new Vertex[]{  graph.get(""+(i)+"."+(j-1)), graph.get(""+(i+1)+"."+(j-1)), graph.get(""+(i+1)+"."+(j)), 
    //graph.get(""+(i+1)+"."+(j+1)), graph.get(""+(i)+"."+(j+1)),  graph.get(""+(i-1)+"."+(j+1)), graph.get(""+(i-1)+"."+(j)), graph.get(""+(i-1)+"."+(j-1))};
      
      node.adjacencies = new ArrayList<Edge>();
      
      for (int k = 0; k < neighbours.length; k++){
        
        if (obstacle_coordinates.containsKey(""+(int)neighbours[k].coordinates.x+"."+(int)neighbours[k].coordinates.y)){continue;}
        
        node.adjacencies.add(new Edge(neighbours[k],1));
        
      }
      
      graph.put(""+(int)node.coordinates.x+"."+(int)node.coordinates.y, node);

          
      
      
  }

}

}

}

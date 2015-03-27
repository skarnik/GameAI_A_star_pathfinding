

class A_star
{
  
  
    void computePath(Vertex source, Vertex goal,  Map<String, Vertex>  graph, boolean fill_flag, String h_name)
    {
      
        int start_time = millis();
        source.cost_so_far = 0.;
        
        source.estimated_total_cost =  heuristic(h_name, source, goal);
        
        PriorityQueue<Vertex> openList = new PriorityQueue<Vertex>();
        
        PriorityQueue<Vertex> closedList = new PriorityQueue<Vertex>();
    
        openList.add(source);
        
        while (!openList.isEmpty())
        {
      
          Vertex current = openList.poll();
         
            if (current == goal){       
             int end_time = millis();
             System.out.println("Time taken to compute path: " + (end_time - start_time) + " ms.");
             return;
           }
          if (current.adjacencies == null){continue;}
            
            for (int i = 0; i < current.adjacencies.size(); i++) {
              
                Edge e = current.adjacencies.get(i);
                Vertex v = e.target_vertex;
                
              
                 double distance = sqrt(pow((current.x - v.x),2) 
                                   + pow((current.y - v.y),2)); 
              
                double weight = distance;
                double distanceThroughCurrent = current.cost_so_far + weight;

        
            if (closedList.contains(v) && distanceThroughCurrent < v.cost_so_far){

          
              closedList.remove(v); 
             
            }
   
          if (!closedList.contains(v) && distanceThroughCurrent < v.cost_so_far) {                
       
          
                openList.remove(v);

                v.cost_so_far = distanceThroughCurrent ;
                
                v.estimated_total_cost = v.cost_so_far + heuristic(h_name, v, goal);
                v.previous = current; 
                openList.add(v);

              }
             
            } 
                //view fill
                 if (fill_flag == true && !openList.isEmpty()){
                   
                    fill(128,200,250,100);
                    ellipse(localize( width/21,openList.peek().coordinates).x, 
                    localize( width/21,openList.peek().coordinates).y,  width/21, width/21);
                 }
            
               closedList.add(current);

             //  System.out.println(closedList);
                
            

        }
    }
    
    double heuristic(String h_name, Vertex next, Vertex goal){
      
      if (h_name == "euclidean"){
      //Euclidean
      
      double heuristic_val = sqrt(pow((next.x - goal.x),2)
      + pow((next.y - goal.y),2)); 
      
      return heuristic_val;
      } 
            else if(h_name == "euclidean_1.5"){
      //Euclidean
      
      double heuristic_val = 1.5*sqrt(pow((next.x - goal.x),2)
      + pow((next.y - goal.y),2)); 
      
      return heuristic_val;
      }
      
      else if(h_name == "euclidean_10"){
      //Euclidean
      
      double heuristic_val = 10*sqrt(pow((next.x - goal.x),2)
      + pow((next.y - goal.y),2)); 
      
      return heuristic_val;
      }
      
      else if (h_name == "manhattan"){
      //Manhattan
      
        double heuristic_val = abs((next.x - goal.x)) + abs((next.y - goal.y)); 
              return heuristic_val;
      
      }
      
       else if (h_name == "manhattan_1.5"){
      //Manhattan
      
        double heuristic_val = 1.5*(abs((next.x - goal.x)) + abs((next.y - goal.y))); 
              return heuristic_val;
      
      }
      
            //Chebyshev distance
     else if (h_name == "diag"){
      double heuristic_valx = abs(next.x - goal.x);
      double heuristic_valy = abs(next.y - goal.y); 
       if (heuristic_valx > heuristic_valy){return heuristic_valx;}
       else { return  heuristic_valy;}
     }
     else if (h_name == "diag_1.5"){
      double heuristic_valx = 1.5*abs(next.x - goal.x);
      double heuristic_valy = 1.5*abs(next.y - goal.y); 
       if (heuristic_valx > heuristic_valy){return heuristic_valx;}
       else { return  heuristic_valy;}
     }
     
     else if (h_name == "rand_small"){
      
      
      double heuristic_val = (int)random(0,21*21); 
     
      return heuristic_val;
      }

      
     else if (h_name == "rand_large"){
      
      
      double heuristic_val = (int)random(10000,40000); 
     
      return heuristic_val;
      }
     else if (h_name == "zero"){
      
      
      double heuristic_val = 0; 
     
      return heuristic_val;
      }

      else {
      System.out.println("Unknown heuristic, using Euclidean");
       double heuristic_val = sqrt(pow((next.x - goal.x),2) + pow((next.y - goal.y),2)); 
   
      return heuristic_val;
      }
    
  }
    
    List<PVector> getShortestPathTo(Vertex source, Vertex target)
    {
        List<PVector> path = new ArrayList<PVector>();
         if (target.previous == null && source != target){ 
           System.out.println("No path. Can't go there.");
           path.add(source.coordinates);
            return path;
        }
        for (Vertex vertex = target; vertex != null; vertex = vertex.previous)

            path.add(vertex.coordinates);
    
        Collections.reverse(path);

        return path;
        
    }
}


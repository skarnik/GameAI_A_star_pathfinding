
import java.util.*;

BoidSeek b1;
Division D1;
Obstacles O1;
A_star a1;
Map<String,PVector> obstacles = new HashMap<String,PVector>();
List<PVector> obstacle_coordinates;
List<PVector> path;
int num_tiles = 21; // per side

void setup()
{
  
  size(693,693); 
  smooth();
  
  b1 = new BoidSeek();
  O1 = new Obstacles(num_tiles);
  obstacles = O1.obstacle_map();
  
  path = new ArrayList<PVector>();
  D1 = new Division(num_tiles, obstacles);
  a1 = new A_star();
 
  path.add(quantize(D1.tileSize, b1.position));

}

void draw()
{
  
        background(255,255,255);
        
        //show fill?
         boolean fill_flag = false;
       /////////////////////////////  
       // boolean fill_flag = true;
       
        //heuristic options
        //"euclidean"  
        //"euclidean_1.5"  //euclidean dist times 1.5
        //"euclidean_10"   //euclidean dist times 10
         //"manhattan"
        //"manhattan_1.5"  //manhattan dist times 1.5
        //"diag"           //diagonal distance
        //"diag_1.5"       //diagonal distance times 1.5
        //"rand_small"     // small random guess between 1, 21*21
        //"rand_large"     // large random guess between 10000,40000
        
        String heuristic_name = "diag_1.5";
        ///////////////////////////////////////
        D1 = new Division(num_tiles, obstacles);
        
        obstacle_coordinates = O1.obstacle_coordinates();
        for (PVector o: obstacle_coordinates){
          
          rectMode(CENTER);  
          fill(80,80,80);  
          PVector center = localize(D1.tileSize, o);
          rect(center.x, center.y, D1.tileSize, D1.tileSize); 
           
       
        }
        
        b1.run();   
       
        //limit mouse to within canvas boundary
        if (mousePressed && (mouseButton == LEFT) && mouseX >= 0 && 
            mouseX <= width && mouseY >= 0 && mouseY <= height ){
        
           //refresh all costs
           a1 = new A_star();  
          
          
          PVector _src= quantize(D1.tileSize, b1.position);
          PVector _dest = quantize(D1.tileSize, mouseX, mouseY);
          System.out.println("Final Destination:" + _dest);
          //hashmap lookup using string keys as "x_coordinate.y_coordinate"
          Vertex src = D1.graph.get(""+(int)_src.x+"."+(int)_src.y);
          
          Vertex dest ;
          
          if (!obstacles.containsKey(""+(int)_dest.x+"."+(int)_dest.y) ){
            
              dest = D1.graph.get(""+(int)_dest.x+"."+(int)_dest.y);
             
             
          } else {
              //detect obstacles and stay put
              System.out.println("That's an obstacle!");
              dest = D1.graph.get(""+(int)_src.x+"."+(int)_src.y);
          }
          
          a1.computePath(src, dest, D1.graph, fill_flag, heuristic_name); // run A_star
          System.out.println("Distance to " + dest.coordinates + ": " + dest.cost_so_far);
          path = a1.getShortestPathTo(src, dest);
         
        //  System.out.println("Path: " + path);
          
          }
          
          for (int i = 1; i < path.size(); i++){
           //draw path
           strokeWeight(5);
           stroke(0,128);
           line(localize(D1.tileSize, path.get(i-1)).x, localize(D1.tileSize, path.get(i-1)).y, localize(D1.tileSize, path.get(i)).x, localize(D1.tileSize, path.get(i)).y);
           noStroke();
           fill(200,100,100);
           ellipse(localize(D1.tileSize,path.get(path.size()-1)).x,localize(D1.tileSize,path.get(path.size()-1)).y,20,20);
           
         }
          
          //first element of path list is new destination  
          b1.destination = localize(D1.tileSize, path.get(0));
          
        
        if ((quantize(D1.tileSize, b1.position).x == path.get(0).x) && (quantize(D1.tileSize, b1.position).y == path.get(0).y) && (path.size() > 1)){
         //if boid has reached current destination tile, get new destination by deleting first element
         path.remove(0);
         b1.destination = localize(D1.tileSize, path.get(0));
 
         
        } else {   b1.destination = localize(D1.tileSize, path.get(0));  }
         
        
}

    PVector quantize(int tileSize, int x, int y){
          //quantize to tile, node coordinates
          int tileX = x/tileSize;
          int tileY = y/tileSize;
          
          PVector tile = new PVector(tileX,tileY);

          return tile;
      
    }
    
        PVector quantize(int tileSize, PVector pos){
          //quantize to tile, node coordinates
          int tileX = (int)(pos.x/tileSize);
          int tileY = (int)(pos.y/tileSize);
          
          PVector tile = new PVector(tileX,tileY);

          return tile;
      
    }
    
    PVector localize(int tileSize, int tileX, int tileY){
          //localize node location to x,y coordinates
          float x = tileX*tileSize + 0.5*tileSize;
          float y = tileY*tileSize + 0.5*tileSize;
          
          PVector location = new PVector(x,y);

          return location;
      
    }
    
        PVector localize(int tileSize, PVector tile){
          //localize node location to x,y coordinates
          float x = tile.x*tileSize + 0.5*tileSize;
          float y = tile.y*tileSize + 0.5*tileSize;
          
          PVector location = new PVector(x,y);

          return location;
      
    }
       
        

        
        

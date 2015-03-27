class Vertex implements Comparable<Vertex>
{
    
    final int x;
    final int y;
    public ArrayList<Edge> adjacencies;
    
    double cost_so_far = Double.POSITIVE_INFINITY;
    PVector coordinates;
    
    double estimated_total_cost = Double.POSITIVE_INFINITY;
    
    Vertex previous;

    Vertex( int _x, int _y) { 
   

    x = _x;
    y = _y;
    coordinates = new PVector(x,y);
    
    }
    


    int compareTo(Vertex other)
    {
       
        return Double.compare(estimated_total_cost, other.estimated_total_cost);
    }

}


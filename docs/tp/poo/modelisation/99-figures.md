---
title: "Rétroconception"
serie: "modelisation"
order: 51
---

Réalisez le diagramme de classes correspondant au code suivant : 


```java

public class Figure  
{ 
    public void draw()  
    { 
        // do some stuff 
    }

    public void erase()  
    { 
        // do some stuff 
    }
} 


public class Square extends Figure  
{ 
    private string color; 

    private int side;  

    protected void setColor (string _color)  
    {  
        // do some stuff  
    } 

} 


public class Graphic  
{ 
    private int width;  

    private int height; 

    private Figure[] figure; 

    public Graphic (int _width, int _height)  // constructor 
    { 
        // do some stuff 
    } 
} 

```

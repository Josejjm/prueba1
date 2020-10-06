
package Modelo;


public class Res {
    int id;
    String fecha;
    String nombre;

    public Res() {
    }

    public Res(int id, String fecha, String nombre) {
        this.id = id;
        this.fecha = fecha;
        this.nombre = nombre;
    }

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
    
}

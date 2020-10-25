
package Modelo;


public class Res {
    int id;
    String fechaE;
    int precio;
    String nombre;
    String habitacion;

    public Res() {
    }

    public Res(int id, String fechaE, int precio, String nombre, String habitacion) {
        this.id = id;
        this.fechaE = fechaE;
        this.precio = precio;
        this.nombre = nombre;
        this.habitacion = habitacion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFechaE() {
        return fechaE;
    }

    public void setFechaE(String fechaE) {
        this.fechaE = fechaE;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getHabitacion() {
        return habitacion;
    }

    public void setHabitacion(String habitacion) {
        this.habitacion = habitacion;
    }

   
    
}

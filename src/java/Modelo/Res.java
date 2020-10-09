
package Modelo;


public class Res {
    int id;
    String fechaE;
    String fechaS;
    String nombre;
    String habitacion;

    public Res() {
    }


    public Res(int id, String fechaE, String fechaS, String nombre, String habitacion) {
        this.id = id;
        this.fechaE = fechaE;
        this.fechaS = fechaS;
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

    public String getFechaS() {
        return fechaS;
    }

    public void setFechaS(String fechaS) {
        this.fechaS = fechaS;
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

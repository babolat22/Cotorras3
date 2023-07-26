package cotorras;

class Golondrina{
    private int energia;
    String nombre;

    public Golondrina(String nom) {
        nombre=nom;
    }
    
    void volarEnCirculos(){
        energia-=100;
    }
    void comerAlpiste(double gramos){
        energia += gramos * 2;
    }
    int getEnergia(){
        return energia;
    }
    void setEnergia(int valor){
        energia = valor;
    }
    String getNombre(){
        return nombre;
    }
    
}
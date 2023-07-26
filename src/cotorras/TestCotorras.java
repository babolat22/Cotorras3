package cotorras;
public class TestCotorras {
    public static void main(String[] args) {
        Golondrina g1,g2 = new Golondrina("Anastasia"); 
        Golondrina g3 = new Golondrina("Pepita"); 
        g1 = new Golondrina("Catarina"); 
        Condor c = new Condor();
        Condor condorito = new Condor();
        
        g1.comerAlpiste(50);
        System.out.println("La energia de la cotorra es: "+g1.getEnergia());
        g1.volarEnCirculos();
        System.out.println("La energia de la cotorra es: "+g1.getEnergia());
        
    }
}

class Condor{

}




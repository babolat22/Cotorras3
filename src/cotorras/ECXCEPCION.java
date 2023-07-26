/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cotorras;

import java.util.InputMismatchException;
import java.util.Scanner;

/**
 *
 * @author Admin
 */
public class ECXCEPCION {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
      boolean acierto=false;  
      Scanner leer = new Scanner(System.in);
      int num = (int) (Math.random()*500);
      System.out.println("........"+num);
      Integer intento=0;
      
      int x = 2;
      
      do{
      try{    
        System.out.println("Ingrese un numero");
       intento = leer.nextInt();
       
      if (num==intento){
            acierto= true;
              System.out.println("ACERTASTE LUEGO DE "+x+" INTENTOS!!!!");
              break;
                      
           }
                  
            
       if (intento < num) {
                System.out.println("El numero es mayor");
            }else {
                System.out.println("El numero es menor");
            }
            System.out.println("Intento "+ x);
            x++;
     
      }catch(InputMismatchException e){
      System.out.println("ERROR, Ingrese Numero, no letras");
      x++;
      leer.next();
      } 
     }while (!acierto); 
                
          
            
            
        }

        
    }
    


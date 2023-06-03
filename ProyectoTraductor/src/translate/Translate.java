/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package translate;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;



/**
 *
 * @author vh367
 */
        
        
public class Translate {
    

  public static void main(String[] args) throws Exception  {
String ruta1 = "C:/Users/vh367/OneDrive/Desktop/Translate/Translate/src/translate/Lexer.flex";

        String ruta2 = "C:/Users/vh367/OneDrive/Desktop/Translate/Translate/src/translate/LexerCup.flex";
        String[] rutaS = {"-parser", "Sintax", "C:/Users/vh367/OneDrive/Desktop/Translate/Translate/src/translate/Sintax.cup"};
        generar(ruta1, ruta2, rutaS);
    
}

    public static void generar(String ruta1, String ruta2, String[] rutaS) throws IOException, Exception{
        File archivo;
        archivo = new File(ruta1);
        JFlex.Main.generate(archivo);
        archivo = new File(ruta2);
        JFlex.Main.generate(archivo);
        java_cup.Main.main(rutaS);
        
        Path rutaSym = Paths.get("C:/Users/vh367/OneDrive/Desktop/Translate/Translate/src/translate/sym.java");
        if (Files.exists(rutaSym)) {
            Files.delete(rutaSym);
        }
        Files.move(
                Paths.get("C:/Users/vh367/Pictures/Translate/sym.java"), 
                Paths.get("C:/Users/vh367/Pictures/Translate/Translate/src/translate/sym.java")
        );
        Path rutaSin = Paths.get("C:/Users/vh367/OneDrive/Desktop/Translate/Translate/src/translate/Sintax.java");
        if (Files.exists(rutaSin)) {
            Files.delete(rutaSin);
        }
        Files.move(
                Paths.get("C:/Users/vh367/Pictures/Translate/Sintax.java"), 
                Paths.get("C:/Users/vh367/OneDrive/Desktop/Translate/Translate/src/translate/Sintax.java")
        ); 
    }
}
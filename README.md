# template_for_jar-
This template is for use with  Processing i3

With some experience with c and c++ I was hoping that java had the equivilent of .h files 
alas it doesn't but it does have class libraries so I set about creating a library to act in place of a .h file
this proved to be remarkably difficult, in retrespect it seems much easier now ( such is life ).

With a great deal of help from others in particular GoToLoop I was able to create a project template 
to use for this task in the future.

Most of the hard work was done by GoToLoop and he provided that basis for my template at
https://Discourse.Processing.org/t/including-shared-pde-files-across-projects/1701/3

The original library by GoToLoop was created from a class with interface Palette which defined static int values for color

This version has better chosen names for the package and library and includes a class Misc with a number of demo functions

The jar that is created is not particularly useful but simpy demonstrates the creation of a .jar for the next person stuck trying to 
make this stuff work.

This was created on Windows10  I can't even pretend to know how to modify it for unix ( sorry)

Contents 
    
    common_jar.jpg                                 a diagramtic representation of how it hangs together 
    
    project\common_jar                             the template directory
    project\common_jar\CreateJarFile.bat           a batch file that will create the .jar file 
    project\common_jar\Misc.java                   Misc class with a few demo functions
    project\common_jar\Palette.java                inteface Palette with static int values for color

    place the common_jar directory into the Processing\project directory
    bring up a cmd shell
    >CreateJarFile.bat
    
    the batch file will create a directory called common, compile some class files which go into common
    then compile a common.jar file,  directories \libraries\common\library are created and the common.jar
    is copied to that directory
    
    project\PaletteJarSketch                         a Processing project directory
    project\PaletteJarSketch\PaletteSketch.pde       a pde file that uses common.jar 
                                                         import static common.Palette.*;
                                                         import common.Misc;
    project\PaletteJarSketch\expected_output.jpg    expected output from the sketch                                       
                                                         
    once \libraries\common\library\common.jar exists
    
    start  project\PaletteSketch.pde  in Processing i3 
    run the project 
    expect to see   project\PaletteJarSketch\expected_output.jpg 
    
    
                                         
 Known issue:
 
The Processing IDE will throw an error  "No library found for common.Palette"  this library comes about because of the import static statment, by removing the static option in the import statment and prefixing the variable names with Palette  the error can be removed 
 
     import static common.Palette.*;     change to        import common.Palette.*; 
     background(BLUE);                   change to        background(Palette.BLUE);
                                                          repeat for all of Palette's static values

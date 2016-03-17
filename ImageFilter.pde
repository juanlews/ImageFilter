import java.io.File;

PImage img;

void setup() {
  File dir = new File("c:/users/"); // Mude aqui para o diretorio onde ficam as suas imagens

  File[] files = dir.listFiles();

  for ( int i=0; i < files.length; i++ ) { 
    String path = files[i].getAbsolutePath();

    if ( path.toLowerCase().endsWith(".jpg") || path.toLowerCase().endsWith(".png") ) {
      img = loadImage( path );
            println(path);
    }
  }
}
void draw() {
if(img != null){
  image (img, 0, 0);
}
}
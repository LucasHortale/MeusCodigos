from OpenGL.GLUT import *
from OpenGL.GLU import *
from OpenGL.GL import *

cores = ((1,1,0),(1,1,0.5))

def display():
    glBegin(GL_TRIANGLE_FAN)
    for cor in cores:
        glColor3fv(cor)
    glEnd()
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT)
    #color = [1.0,0.,0.,0.5]
    #glMaterialfv(GL_FRONT,GL_DIFFUSE,color)
    glutSolidSphere(3,20,20)
    glutSwapBuffers()
    glRotatef(2,1,3,0)

def timer(i):
    glutPostRedisplay()
    glutTimerFunc(50,timer,1)

# PROGRAMA PRINCIPAL
glutInit(sys.argv)
glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH | GLUT_MULTISAMPLE)
glutInitWindowSize(800,600)
glutCreateWindow("ESFERA")
glutDisplayFunc(display)
glEnable(GL_MULTISAMPLE)
glEnable(GL_DEPTH_TEST)
glClearColor(0.,0.,0.,1.)
gluPerspective(45,800.0/600.0,0.1,50.0)
glTranslatef(0.0,0.0,-10)
glRotatef(45,1,1,1)
glutTimerFunc(50,timer,1)
glutMainLoop()

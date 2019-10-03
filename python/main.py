

#import json

#some jason variables
#human_attr = json.loads(human_attr)

#global variable
gl = 303
gl_fn = 21

def inside_function(gl=10):
    print "Local Variables:" + str(gl)
    global gl_fn #use global keyword to refer to global variable outside
    print "gl_fn: " + str(gl_fn)
    try:
        gl_fn = "changed" 
        print "Global change: "+ str(gl_fn)
        print "Global inside Local Function: " + str(gl)
    except:
        print "Error happened"

def main():
    print 'This is Main Function'
    inside_function()
    futuri = Human('Futuri',30)
    james = Adult('James',30)

    print futuri.getInfo()
    print james.getInfo()
    print james.pay_bill()
    

class Human():
    #human default attributes
    species = 'Homo Sapien'
    limbs = 4

    #initialize attributes
    def __init__(self, name,age):
        self.name = name
        self.age = age

    #instance method
    def getInfo(self):
        return "Name:{}\nAge:{}".format(self.name,self.age)


#class inheritance
class Adult(Human):
    #Adult will inherite Human attributes
    def pay_bill(self):
        return "Paying bills"

if __name__ == "__main__":
    main()
    print 'Inside if Main'

print 'this is outside of main'


#testing out decorator

def my_decorator(func):
    def inner_wrapper():
        return func().upper()
    return inner_wrapper

@my_decorator
def sayHello():
    return "hi charlene tan"

@my_decorator
def sayHello():
    return "hi sale tan"


#sayHello=my_decorator(sayHello) = inner_wrapper

a=sayHello()
print(a)


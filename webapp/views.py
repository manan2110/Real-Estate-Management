from django.shortcuts import render, redirect

from django.contrib.auth.models import User
from django.contrib.auth import authenticate
from django.contrib.auth import logout, login

from django.views.decorators.csrf import csrf_protect
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView

from django.urls import reverse_lazy, reverse

from .models import *
from .forms import *
# Create your views here.


def OffIndex(request):
    return render(request, 'off_index.html')


def loginUser(request):
    if request.method == "POST":
        Username = request.POST.get('username')
        Password = request.POST.get('password')
        # check if user has entered correct credentials
        user = Login.objects.filter(username=Username).first()
        if user is not None and user.password == Password:
            url = "/home/" + Username
            return redirect(url, username=Username)
        else:
            return redirect("/login")
        # No backend authenticated the credentials
    return render(request, 'login.html')


def index(request, username):
    # print(username)
    user = Login.objects.filter(username=username).first()
    return render(request, 'index.html', {'user': user.a, 'username': username})


def OfficeLogin(request):
    if request.method == "POST":
        Username = request.POST.get('username')
        Password = request.POST.get('password')
        # check if user has entered correct credentials
        user = OffLogin.objects.filter(username=Username).first()
        if user is not None and user.password == Password:
            # A backend authenticated the credentials
            return redirect('/off_home')
        else:
            return redirect("/off_login")
        # No backend authenticated the credentials
    return render(request, 'off_login.html')


def select(request):
    return render(request, 'select.html')


def agents(request):
    agents = Agent.objects.all()
    count = agents.count()
    return render(request, 'agent.html', {'agents': agents, 'count': count})


def sellers(request):
    sellers = Owner.objects.all()
    count = sellers.count()
    return render(request, 'sellers.html', {'sellers': sellers, 'count': count})


def sellersAgent(request, username):
    user = Login.objects.filter(username=username).first()
    no = []

    properties = Property.objects.filter(a_id=user.a.id)

    for a in properties:
        no.append(a.o_id)

    sellers = Owner.objects.filter(id__in=no)
    count = sellers.count()
    return render(request, 'sellers.html', {'sellers': sellers, 'count': count})


def buyers(request):
    buyers = Buyer.objects.all()
    count = buyers.count()
    return render(request, 'buyers.html', {'buyers': buyers, 'count': count})


def buyersAgent(request, username):
    user = Login.objects.filter(username=username).first()
    no = []
    x = TranRent.objects.all()
    x = x.filter(a_id=user.a_id)

    y = TranSale.objects.all()
    y = y.filter(a_id=user.a_id)

    for a in x:
        no.append(a.b_id)
    for a in y:
        no.append(a.b_id)

    buyers = Buyer.objects.filter(id__in=no)
    count = buyers.count()
    return render(request, 'buyers.html', {'buyers': buyers, 'count': count})


def availableProperty(request):
    properties = Property.objects.filter(p_status='A')
    count = properties.count()
    return render(request, 'available_property.html', {'properties': properties, 'count': count})


def availablePropertyAgent(request, username):
    properties = Property.objects.filter(p_status='A')
    user = Login.objects.filter(username=username).first()
    # print(user.a.id)
    properties = properties.filter(a_id=user.a.id)
    # print(properties.values())
    count = properties.count()
    return render(request, 'available_property.html', {'properties': properties, 'count': count})


def rentedProperty(request):
    properties = Property.objects.filter(p_status='N')
    properties = properties.filter(p_tag='R')
    count = properties.count()
    return render(request, 'rented_property.html', {'properties': properties, 'count': count})


def rentedPropertyAgent(request, username):
    properties = Property.objects.filter(p_status='N')
    user = Login.objects.filter(username=username).first()
    # print(user.a.id)
    properties = properties.filter(a_id=user.a.id)
    properties = properties.filter(p_tag='R')
    count = properties.count()
    return render(request, 'rented_property.html', {'properties': properties, 'count': count})


def SoldProperty(request):
    properties = Property.objects.filter(p_status='N')
    properties = properties.filter(p_tag='S')
    count = properties.count()
    return render(request, 'sold_property.html', {'properties': properties, 'count': count})


def SoldPropertyAgent(request, username):
    properties = Property.objects.filter(p_status='N')
    user = Login.objects.filter(username=username).first()
    # print(user.a.id)
    properties = properties.filter(a_id=user.a.id)
    properties = properties.filter(p_tag='S')
    count = properties.count()
    return render(request, 'sold_property.html', {'properties': properties, 'count': count})


def logoutUser(request):
    logout(request)
    return redirect("/")


class AddAgent(CreateView):
    model = Agent
    form_class = AgentForm
    template_name = 'add_agent.html'
    # fields = '__all__'
    success_url = reverse_lazy('agents')


class AddBuyer(CreateView):
    model = Buyer
    form_class = BuyerForm
    template_name = 'add_buyer.html'
    # fields = '__all__'
    success_url = reverse_lazy('buyers')


class AddSeller(CreateView):
    model = Owner
    form_class = OwnerForm
    template_name = 'add_seller.html'
    # fields = '__all__'
    success_url = reverse_lazy('sellers')


class Signup(CreateView):
    model = Login
    form_class = SignupForm
    template_name = 'signup.html'
    # fields = '__all__'
    success_url = reverse_lazy('login')


class AddProperty(CreateView):
    model = Property
    form_class = PropertyForm
    template_name = 'add_property.html'
    # fields = '__all__'
    success_url = reverse_lazy('home')

    # def get_context_data(self, *args, **kwargs):
    #     # cat_menu = Category.objects.all()
    #     # context = super( ArticleDetailView, self).get_context_data(*args , **kwargs)
    #     # stuff = get_object_or_404(Post , id = self.kwargs['pk'])
    #     # total_likes = stuff.total_likes()
    #     # context["cat_menu"] = cat_menu
    #     # context["total_likes"] = total_likes

    #     return context
def TransactionSaleAgent(request, username):
    sales = TranSale.objects.all()
    user = Login.objects.filter(username=username).first()
    # print(user.a.id)
    sales = sales.filter(a_id=user.a.id)
    count = sales.count()
    return render(request, 'tran_sale.html', {'sales': sales, 'count': count})

def TransactionRentAgent(request, username):
    rent = TranRent.objects.all()
    user = Login.objects.filter(username=username).first()
    # print(user.a.id)
    rent = rent.filter(a_id=user.a.id)
    count = rent.count()
    return render(request, 'tran_rent.html', {'rents': rent, 'count': count})
    
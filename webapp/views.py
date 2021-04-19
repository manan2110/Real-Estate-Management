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
    if request.method == "POST":
        id = request.POST["agent_id"]
        fname = request.POST["firstname"]
        lname = request.POST["lastname"]
        email = request.POST["email"]
        contact = request.POST["contact"]
        if id is not None and id != "":
            agents = agents.filter(id=id)
        if contact is not None and contact != "":
            agents = agents.filter(contact=contact)
        if email is not None and email != "":
            agents = agents.filter(email=email)
        if fname is not None and fname != "":
            agents = agents.filter(firstname=fname)
        if lname is not None and lname != "":
            agents = agents.filter(lastname=lname)
    count = agents.count()
    return render(request, 'agent.html', {'agents': agents, 'count': count})


def sellers(request):
    sellers = Owner.objects.all()
    if request.method == "POST":
        id = request.POST["owner_id"]
        fname = request.POST["firstname"]
        lname = request.POST["lastname"]
        email = request.POST["email"]
        contact = request.POST["contact"]
        if id is not None and id != "":
            sellers = sellers.filter(id=id)
        if contact is not None and contact != "":
            sellers = sellers.filter(contact=contact)
        if email is not None and email != "":
            sellers = sellers.filter(email=email)
        if fname is not None and fname != "":
            sellers = sellers.filter(firstname=fname)
        if lname is not None and lname != "":
            sellers = sellers.filter(lastname=lname)
    count = sellers.count()
    return render(request, 'sellers.html', {'sellers': sellers, 'count': count})


def sellersAgent(request, username):
    user = Login.objects.filter(username=username).first()
    no = []

    properties = Property.objects.filter(a_id=user.a.id)

    for a in properties:
        no.append(a.o_id)

    sellers = Owner.objects.filter(id__in=no)

    if request.method == "POST":
        id = request.POST["owner_id"]
        fname = request.POST["firstname"]
        lname = request.POST["lastname"]
        email = request.POST["email"]
        contact = request.POST["contact"]
        if id is not None and id != "":
            sellers = sellers.filter(id=id)
        if contact is not None and contact != "":
            sellers = sellers.filter(contact=contact)
        if email is not None and email != "":
            sellers = sellers.filter(email=email)
        if fname is not None and fname != "":
            sellers = sellers.filter(firstname=fname)
        if lname is not None and lname != "":
            sellers = sellers.filter(lastname=lname)
    count = sellers.count()
    return render(request, 'sellers_agent.html', {'user': user.a, 'sellers': sellers, 'count': count, 'username': username})


def buyers(request):
    buyers = Buyer.objects.all()
    if request.method == "POST":
        id = request.POST["buyer_id"]
        fname = request.POST["firstname"]
        lname = request.POST["lastname"]
        email = request.POST["email"]
        contact = request.POST["contact"]
        if id is not None and id != "":
            buyers = buyers.filter(id=id)
        if contact is not None and contact != "":
            buyers = buyers.filter(contact=contact)
        if email is not None and email != "":
            buyers = buyers.filter(email=email)
        if fname is not None and fname != "":
            buyers = buyers.filter(firstname=fname)
        if lname is not None and lname != "":
            buyers = buyers.filter(lastname=lname)
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

    if request.method == "POST":
        id = request.POST["buyer_id"]
        fname = request.POST["firstname"]
        lname = request.POST["lastname"]
        email = request.POST["email"]
        contact = request.POST["contact"]
        if id is not None and id != "":
            buyers = buyers.filter(id=id)
        if contact is not None and contact != "":
            buyers = buyers.filter(contact=contact)
        if email is not None and email != "":
            buyers = buyers.filter(email=email)
        if fname is not None and fname != "":
            buyers = buyers.filter(firstname=fname)
        if lname is not None and lname != "":
            buyers = buyers.filter(lastname=lname)
    count = buyers.count()
    return render(request, 'buyers_agent.html', {'user': user.a, 'buyers': buyers, 'count': count, 'username': username})


def PropertyAgent(request, username):
    properties = Property.objects.all()
    user = Login.objects.filter(username=username).first()
    # print(user.a.id)
    properties = properties.filter(a_id=user.a.id)
    # print(properties.values())
    if request.method == "POST":
        p_id = request.POST["property_id"]
        date = request.POST["date"]
        size = request.POST["size"]
        status = request.POST["status"]
        type = request.POST["type"]
        oid = request.POST["owner_id"]
        address = request.POST["address"]
        tag = request.POST["tag"]
        bhk = request.POST["bhk"]
        mini = request.POST["minprice"]
        maxi = request.POST["maxprice"]
        if p_id != "" and p_id is not None:
            properties = properties.filter(id=p_id)
        if date != "" and date is not None:
            properties = properties.filter(l_date=date)
        if size != "" and size is not None:
            properties = properties.filter(p_size__gte=size)
        if mini != "" and mini is not None:
            properties = properties.filter(p_sug_price__gte=mini)
        if maxi != "" and maxi is not None:
            properties = properties.filter(p_sug_price__lte=maxi)
        if bhk != "" and bhk is not None:
            properties = properties.filter(bhk__gte=bhk)
        if oid != "" and oid is not None:
            properties = properties.filter(o_id=oid)
        if status != "" and status is not None:
            if status == "Available":
                properties = properties.filter(p_status='A')
            else:
                properties = properties.filter(p_status='N')
        if type != "" and type is not None:
            if type == "Flat":
                properties = properties.filter(p_type='F')
            elif type == "House":
                properties = properties.filter(p_type='H')
            else:
                properties = properties.filter(p_type='A')
        if tag != "" and tag is not None:
            if tag == "For Sale":
                properties = properties.filter(p_tag='S')
            else:
                properties = properties.filter(p_tag='R')
        if address != "" and address is not None:
            properties = properties.filter(adress__icontains=address)
    count = properties.count()
    return render(request, 'property_agent.html', {'user': user.a, 'properties': properties, 'count': count, 'username': username})


def Properties(request):
    properties = Property.objects.all()
    if request.method == "POST":
        p_id = request.POST["property_id"]
        date = request.POST["date"]
        size = request.POST["size"]
        status = request.POST["status"]
        address = request.POST["address"]
        type = request.POST["type"]
        aid = request.POST["agent_id"]
        oid = request.POST["owner_id"]
        tag = request.POST["tag"]
        bhk = request.POST["bhk"]
        mini = request.POST["minprice"]
        maxi = request.POST["maxprice"]
        if p_id != "" and p_id is not None:
            properties = properties.filter(id=p_id)
        if date != "" and date is not None:
            properties = properties.filter(l_date=date)
        if size != "" and size is not None:
            properties = properties.filter(p_size__gte=size)
        if mini != "" and mini is not None:
            properties = properties.filter(p_sug_price__gte=mini)
        if maxi != "" and maxi is not None:
            properties = properties.filter(p_sug_price__lte=maxi)
        if bhk != "" and bhk is not None:
            properties = properties.filter(bhk__gte=bhk)
        if aid != "" and aid is not None:
            properties = properties.filter(a_id=aid)
        if oid != "" and oid is not None:
            properties = properties.filter(o_id=oid)
        if aid != "" and aid is not None:
            properties = properties.filter(a_id=aid)
        if status != "" and status is not None:
            if status == "Available":
                properties = properties.filter(p_status='A')
            else:
                properties = properties.filter(p_status='N')
        if type != "" and type is not None:
            if type == "Flat":
                properties = properties.filter(p_type='F')
            elif type == "House":
                properties = properties.filter(p_type='H')
            else:
                properties = properties.filter(p_type='A')
        if tag != "" and tag is not None:
            if tag == "For Sale":
                properties = properties.filter(p_tag='S')
            else:
                properties = properties.filter(p_tag='R')
        if address != "" and address is not None:
            properties = properties.filter(adress__icontains=address)

    count = properties.count()
    return render(request, 'property.html', {'properties': properties, 'count': count})


def rentedPropertyAgent(request, username):
    properties = Property.objects.filter(p_status='N')
    user = Login.objects.filter(username=username).first()
    # print(user.a.id)
    properties = properties.filter(a_id=user.a.id)
    properties = properties.filter(p_tag='R')
    count = properties.count()
    return render(request, 'rented_property.html', {'user': user.a, 'properties': properties, 'count': count})


def SoldPropertyAgent(request, username):
    properties = Property.objects.filter(p_status='N')
    user = Login.objects.filter(username=username).first()
    # print(user.a.id)
    properties = properties.filter(a_id=user.a.id)
    properties = properties.filter(p_tag='S')
    count = properties.count()
    return render(request, 'sold_property.html', {'user': user.a, 'properties': properties, 'count': count})


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
    success_url = reverse_lazy('off_home')

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
    amount = 0
    for x in sales:
        amount += x.sell_price
    count = sales.count()
    return render(request, 'tran_sale.html', {'user': user.a, 'sales': sales, 'count': count, 'username': username, 'amount': amount})


def TransactionRentAgent(request, username):
    rents = TranRent.objects.all()
    user = Login.objects.filter(username=username).first()
    # print(user.a.id)
    rents = rents.filter(a_id=user.a.id)
    amount = 0
    for x in rents:
        amount += x.rent
    count = rents.count()
    return render(request, 'tran_rent.html', {'user': user.a, 'rents': rents, 'count': count, 'username': username, 'amount': amount})


class AddTransactionRent(CreateView):
    model = TranRent
    form_class = TransactionRentForm
    template_name = 'add_transaction_rent.html'
    #fields = '__all__'
    success_url = reverse_lazy('login')


class AddTransactionSale(CreateView):
    model = TranSale
    form_class = TransactionSaleForm
    template_name = 'add_transaction_sale.html'
    #fields = '__all__'
    success_url = reverse_lazy('login')


def profile(request, username):
    user = Login.objects.filter(username=username).first()

    rents = TranRent.objects.all()
    rents = rents.filter(a_id=user.a.id)
    amountRent = 0
    for x in rents:
        amountRent += x.rent
    countRent = rents.count()

    amountSale = 0
    sales = TranSale.objects.all()
    sales = sales.filter(a_id=user.a.id)
    for x in sales:
        amountSale += x.sell_price
    countSale = sales.count()

    return render(request, 'profile.html', {'amountRent': amountRent, 'countRent': countRent, 'amountSale': amountSale, 'countSale': countSale, 'username': username, 'user': user.a})

from django.contrib import admin
from django.urls import path, include
from webapp import views
from django.conf.urls import url

urlpatterns = [
    path('', views.select, name="select"),
    path('home/<str:username>/', views.index, name="home"),
    path('off_home', views.OffIndex, name="off_home"),
    path('login', views.loginUser, name="login"),
    path('logout', views.logoutUser, name="logout"),
    path('off_login', views.OfficeLogin, name="off_login"),
    path('agents', views.agents, name="agents"),
    path('buyers', views.buyers, name="buyers"),
    path('sellers', views.sellers, name="sellers"),
    path('availabe_properties', views.availableProperty, name="availableProperty"),
    path('rented_properties', views.rentedProperty, name="rentedProperty"),
    path('sold_properties', views.SoldProperty, name="soldProperty"),
    path('add_agent', views.AddAgent.as_view(), name="addAgent"),
    path('add_buyer', views.AddBuyer.as_view(), name="addBuyer"),
    path('add_seller', views.AddSeller.as_view(), name="addOwner"),
    path('signup', views.Signup.as_view(), name="signup"),
    # for a particluar agent
    path('buyers/<str:username>/', views.buyersAgent, name="buyersAgent"),
    path('sellers/<str:username>/', views.sellersAgent, name="sellersAgent"),
    path('availabe_properties/<str:username>/',
         views.availablePropertyAgent, name="availablePropertyAgent"),
    path('rented_properties/<str:username>/',
         views.rentedPropertyAgent, name="rentedPropertyAgent"),
    path('sold_properties/<str:username>/',
         views.SoldPropertyAgent, name="soldPropertyAgent"),
    path('add_property',
         views.AddProperty.as_view(), name="AddProperty"),
    path('tran_sale/<str:username>/',views.TransactionSaleAgent,name="soldByAgent"),
    path('tran_rent/<str:username>/',views.TransactionRentAgent,name="rentedByAgent"),

    #     url(r'^add_property/(?P<username>\d+)/$',
    #         views.AddProperty.as_view(), name='AddProperty')
]

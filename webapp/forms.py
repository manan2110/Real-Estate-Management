from django import forms
from .models import *

Owners = Owner.objects.all().values_list('id', 'id')

properties_for_rent = Property.objects.filter(
    p_status='A').filter(p_tag='R')


properties_for_sale = Property.objects.filter(
    p_status='A').filter(p_tag='S').values_list('id', 'id')

# print(properties_for_rent)

choice_list1 = []
for item in properties_for_rent:
    choice_list1.append(item)

choice_list2 = []
for item in properties_for_sale:
    choice_list2.append(item)


class AgentForm(forms.ModelForm):
    class Meta:
        model = Agent
        fields = '__all__'

        widgets = {
            'firstname': forms.TextInput(),
            'lastname': forms.TextInput(),
            'email': forms.EmailInput(),
            'contact': forms.NumberInput(),
        }


class BuyerForm(forms.ModelForm):
    class Meta:
        model = Buyer
        fields = '__all__'

        widgets = {
            'firstname': forms.TextInput(),
            'lastname': forms.TextInput(),
            'email': forms.EmailInput(),
            'contact': forms.NumberInput(),
        }


class OwnerForm(forms.ModelForm):
    class Meta:
        model = Owner
        fields = '__all__'

        widgets = {
            'firstname': forms.TextInput(),
            'lastname': forms.TextInput(),
            'email': forms.EmailInput(),
            'contact': forms.NumberInput(),
        }


class SignupForm(forms.ModelForm):
    class Meta:
        model = Login
        fields = '__all__'


class PropertyForm(forms.ModelForm):
    class Meta:
        model = Property
        fields = '__all__'

        # widgets = {
        #     'l_date': forms.DateInput(),
        #     'adress': forms.TextInput(),
        #     'bhk': forms.NumberInput(),
        #     'p_size': forms.NumberInput(),
        #     'p_status': forms.TextInput(),
        #     'p_type': forms.TextInput(),
        #     'p_tag': forms.TextInput(),
        #     'p_sug_price': forms.NumberInput(),
        #     'bathrooms': forms.NumberInput(),
        #     'p_desc': forms.TextInput(),
        #     'a': forms.TextInput(attrs={'value': '', 'id': 'abc', 'type': 'hidden'}),
        #     'o': forms.Select(choices=Owners),
        # }


class TransactionSaleForm(forms.ModelForm):
    class Meta:
        model = TranSale
        fields = '__all__'


class TransactionRentForm(forms.ModelForm):
    class Meta:
        model = TranRent
        fields = '__all__'

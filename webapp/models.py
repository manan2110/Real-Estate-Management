from django.db import models


class Agent(models.Model):
    # Field name made lowercase.
    id = models.AutoField(db_column='ID', primary_key=True)
    # Field name made lowercase.
    firstname = models.CharField(db_column='Firstname', max_length=30)
    # Field name made lowercase.
    lastname = models.CharField(db_column='Lastname', max_length=30)
    # Field name made lowercase.
    email = models.CharField(db_column='Email', unique=True, max_length=50)
    contact = models.IntegerField(unique=True)

    class Meta:
        managed = False
        db_table = 'agent'

    def __str__(self):
        return self.firstname + " " + self.lastname


class Buyer(models.Model):
    # Field name made lowercase.
    id = models.AutoField(db_column='ID', primary_key=True)
    # Field name made lowercase.
    firstname = models.CharField(db_column='Firstname', max_length=30)
    # Field name made lowercase.
    lastname = models.CharField(db_column='Lastname', max_length=30)
    # Field name made lowercase.
    email = models.CharField(db_column='Email', unique=True, max_length=50)
    contact = models.IntegerField(unique=True)

    class Meta:
        managed = False
        db_table = 'buyer'

    def __str__(self):
        return self.firstname + " " + self.lastname


class Login(models.Model):
    username = models.CharField(primary_key=True, max_length=20)
    password = models.CharField(max_length=20)
    a = models.OneToOneField(Agent, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'login'

    def __str__(self):
        return self.username


class OffLogin(models.Model):
    username = models.CharField(primary_key=True, max_length=20)
    password = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'off_login'

    def __str__(self):
        return self.username


class Owner(models.Model):
    # Field name made lowercase.
    id = models.AutoField(db_column='ID', primary_key=True)
    # Field name made lowercase.
    firstname = models.CharField(db_column='Firstname', max_length=30)
    # Field name made lowercase.
    lastname = models.CharField(db_column='Lastname', max_length=30)
    # Field name made lowercase.
    email = models.CharField(db_column='Email', unique=True, max_length=50)
    contact = models.IntegerField(unique=True)

    class Meta:
        managed = False
        db_table = 'owner'

    def __str__(self):
        return self.firstname + " " + self.lastname


class Property(models.Model):
    # Field name made lowercase.
    id = models.AutoField(db_column='ID', primary_key=True)
    l_date = models.DateField(db_column='L_date')  # Field name made lowercase.
    adress = models.CharField(max_length=255)
    bhk = models.IntegerField()
    # Field name made lowercase.
    p_size = models.IntegerField(db_column='P_size')
    # Field name made lowercase.
    p_status = models.CharField(db_column='P_status', max_length=1)
    # Field name made lowercase.
    p_type = models.CharField(db_column='P_type', max_length=1)
    # Field name made lowercase.
    p_tag = models.CharField(db_column='P_tag', max_length=1)
    # Field name made lowercase.
    p_sug_price = models.IntegerField(db_column='P_sug_price')
    bathrooms = models.IntegerField()
    # Field name made lowercase.
    p_desc = models.TextField(db_column='P_desc', blank=True, null=True)
    # Field name made lowercase.
    o = models.ForeignKey(Owner, models.DO_NOTHING, db_column='o_ID')
    # Field name made lowercase.
    a = models.ForeignKey(Agent, models.DO_NOTHING, db_column='a_ID')

    class Meta:
        managed = False
        db_table = 'property'


class TranRent(models.Model):
    # Field name made lowercase.
    tr_id = models.AutoField(db_column='TR_ID', primary_key=True)
    rent = models.IntegerField()
    st_date = models.DateField()
    end_date = models.DateField()
    a = models.ForeignKey(Agent, models.DO_NOTHING)
    b = models.ForeignKey(Buyer, models.DO_NOTHING)
    p = models.ForeignKey(Property, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'tran_rent'


class TranSale(models.Model):
    # Field name made lowercase.
    ts_id = models.AutoField(db_column='TS_ID', primary_key=True)
    sell_price = models.IntegerField()
    s_date = models.DateField()
    a = models.ForeignKey(Agent, models.DO_NOTHING)
    b = models.ForeignKey(Buyer, models.DO_NOTHING)
    p = models.ForeignKey(Property, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'tran_sale'

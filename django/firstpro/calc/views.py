from django.shortcuts import render
from django_tables2.tables import Table
from django.http import  HttpResponse
# Create your views here.
def home(request):
    csvfile = request.FILES['mycsv.csv']
    data = pd.read_csv(csvfile.name)
    df_table = Table(data.to_dict(orient='list'))
    context = {'df_table': df_table}
    return render(request,'home.html',{'name':'pal'},context)

def add(request):
    val1=int(request.GET['n1'])
    val2=int(request.GET['n2'])
    r=val1+val2

    return  render(request,'result.html',{'n1':val1,'n2':val2,'re':r})

#cost calculator

########################################
import sys

from tkinter import *
import tkinter as tkr
from tkinter import messagebox
from tkinter import simpledialog

import random
import time;
root=Tk()
root.geometry('1600x800+0+0')# safheye asli
root.title('Pamiran Industries Management')

text_Input= StringVar()
operator=''
Tops= Frame(root,width= 1600,height=30,bg='powder blue',relief=SUNKEN)#mogeiat safheye header
Tops.pack(side=TOP)
#######################################################################
photo= PhotoImage(file='Capture.Gif')#image
lbl0=Label(Tops,image=photo)
lbl0.grid(row=0,column=1)
########################################## safheye mohasebat #######
f1= Frame(root,width= 800,height=800,relief=SUNKEN)
f1.pack(side=LEFT)

########## time ##################################################

localtime=time.asctime(time.localtime(time.time()))
#################################### Header #############
lblInfo= Label(Tops, font=('arial',40,'bold'),text='Pamiran Industries Packing Management',fg='steel Blue', bd=10, anchor='w')
lblInfo.grid(row=0,column=0)
lblInfo= Label(Tops, font=('arial',15,'bold'),text=localtime,fg='steel Blue', bd=10, anchor='w')
lblInfo.grid(row=1,column=0)

############################ popup box model #############

#root2=Tk()
#def popup (msg):
    
    #w=Label(root2,text="titil")
    #w.pack()
   # messagebox.showinfo("Title", "a Tk MessageBox")
    #messagebox.showerror("welcome","welcome to the .....")
   #num= simpledialog.askinteger("h","adado begu")
#customer= simpledialog.askstring("مشتري",":نام مشتري را وارد کنيد")
#root2.destroy()

########### Functions ############################
def Ref():

    customer= simpledialog.askstring("مشتري",":نام مشتري را وارد کنيد")
    
    lis1=random.randint(0,10000)

    lis2=list(map(chr, range(97, 123)))
    lis3=random.choice(lis2)
    val=random.choice(lis2)
    randomRef= str(str(lis3)+str(lis1)+str(val))#shomare peigiri
    rand.set(randomRef)
  
    L=float(l.get())
    W=float(w.get())
    H=float(h.get())
    TQnt=int(Qnt.get())
    Type_of_material=str(type_of_material.get())

    if Type_of_material=='غيره':
        Type_of_material=simpledialog.askstring('نوع ورق',':نوع ورق را وارد کنيد')
        
   
    Type_of_box=str(type_of_box.get())
    Good=str(good.get())
    


    
    Type_of_floot=str(type_of_floot.get())
        
    if Type_of_box=='معمولي':
        
        if Type_of_floot=='ef':
            arz=(W+H)+0.3
        if Type_of_floot=='cf' or Type_of_floot=='bf':
            arz=(W+H)+0.4
        if Type_of_floot=='b&cf':
            arz=(W+H)+0.6
        tuleYekTike= 2*(W+L)+4
        tul_do_tike = (L+W+4)
        nim=(L+W+4)
        bb=0
    if Type_of_box=='يک طرف درب':
        if Type_of_floot=='ef':
            arz=(W/2+H)+0.3
        if Type_of_floot=='cf' or Type_of_floot=='bf':
            arz=(W/2+H)+0.4
        if Type_of_floot=='b&cf':
            arz=(W/2+H)+0.6
        tuleYekTike= 2*(W+L)+4
        tul_do_tike = (L+W+4)
        nim=(L+W+4)
        bb=0
    if Type_of_box=='گوشواره اي':
        if Type_of_floot=='ef':
            arz=(4*H)+L+4
        if Type_of_floot=='cf' or Type_of_floot=='bf':
            arz=(4*H)+L+5
        if Type_of_floot=='b&cf':
            arz=(4*H)+L+6
        tuleYekTike= (3*H)+(2*W)+2
        tul_do_tike = "ندارد"
        bb=0
        
    if Type_of_box=='دارويي':
        
        arz=(2*((2*W)+H+6))-W+2
        tuleYekTike= 2*(L+W)+5
        tul_do_tike = (L+W+4)+2
        nim=(L+W+4)+2
        bb=0
        ############################################################################### inja hanuz kaarvdarim
    if Type_of_box=='کفشي/قفلي':
        arz=(L+(2*(2*H+1)))+2
        tuleYekTike=2*H+W+2
        tul_do_tike="ندارد"
        if Type_of_floot=='ef':
            a=1
            b=0.7
        if Type_of_floot=='cf' or Type_of_floot=='bf':
            a=1.7
            b=1.8
        if Type_of_floot=='b&cf':
            a=3.5
            b=2.5
        rf=(W+b+(2*(2*H+1)))+2
        fr=2*H+L+a+2
        
        messagebox.showinfo("!هشدار","عرض کار "+ str(fr)+"و طول کار"+str(rf)+"ميباشد")
        nazdiktarin_arz=simpledialog.askinteger("عرض","نزديک ترين عرض به عدد"+str(fr)+"را وارد کنيد")
        nazdiktarin_tul=simpledialog.askinteger("طول","نزديک ترين طول به عدد"+str(rf)+"را وارد کنيد")
        #pqq= messagebox.askquestion("تاييد","آيا کارتن چاپ دارد؟",icon='question')
        # if pqq=="yes":
        #else:
        #    inja bayad check shavad
          
        if nazdiktarin_tul>=tuleYekTike:
            qn=nazdiktarin_tul//tuleYekTike
            qn2=nazdiktarin_arz//(arz)
            qnt=(qn*qn2)
        else:
            qn=nazdiktarin_tul//nim
            qn2=nazdiktarin_arz//(arz)
            qnt=(qn*qn2)/2
        

        #pert= format(nazdiktarin_arz%arz,'.2f')
        #messagebox.showinfo("!هشدار", "  اين عرض به شما "+ str(qnt)+ '  عدد کار مي دهد '+
                        #'\nپرت دارد  (cm2)  '+str(nazdiktarin_tul)+"  x  "+str(pert)+'  عرض منتخب ')

        #area=(Arzevarag*TuleKar)/(qnt*10000)
        #Area.set(area)
        bb=(nazdiktarin_arz*nazdiktarin_tul)/10000
        #bbb=bb+pricePERm2
##        print(rf)
##        print(fr)
##        print(bb)

        #a
        #b
        messagebox.showinfo("!اطلاعيه","قيمت اين محصول تا ساخت قالب حدودي ميباشد"  )
        
        
    if Type_of_box=='پيتزايي':   
        arz=(L+(2*(2*H+1)))+2
        tuleYekTike=2*(H+W)+5
        tul_do_tike="ندارد"
        bb=0
    total.set(tuleYekTike)
    total2.set(tul_do_tike)
    ArzeKar.set(arz)
   
    root2=Tk()

    TuleKar= simpledialog.askinteger("طول شيت","از ميان طول هاي پيشنهاد شده يا ورق هاي موجود عدد مناسب را وارد کنيد")

        

    root2.destroy()
    
    taki= arz#rond be bala bayad beshavad vali nemishe felan

    dotai= 2*arz
    setai= 3*arz
    chartai= 4*arz
    panjtai= 5*arz
    shishtai= 6*arz
        
    if taki>80 and taki<90:
        taki=90
    if taki>90 and taki<100:
        taki=100
    if taki>100 and taki<110:
        taki=110
    if taki>110 and taki<120:
        taki=120
    if taki>120 and taki<130:
        taki=130
  
    
    if dotai>80 and dotai<90:
        dotai=90
    if dotai>90 and dotai<100:
        dotai=100
    if dotai>100 and dotai<110:
        dotai=110
    if dotai>110 and dotai<120:
        dotai=120
    if dotai>120 and dotai<130:
        dotai=130
    if dotai>130 and dotai<140:
        dotai=140
   
           
        
    if setai>80 and setai<90:
        setai=90
    if setai>90 and setai<100:
         setai=100
    if setai>100 and setai<110:
         setai=110
    if setai>110 and setai<120:
        setai=120
    if setai>120 and setai<130:
        setai=130
   
    
    if chartai>80 and chartai<90:
        chartai=90
    if chartai>90 and chartai<100:
        chartai=100
    if chartai>100 and chartai<110:
        chartai=110
    if chartai>110 and chartai<120:
        chartai=120
    if chartai>120 and chartai<130:
        chartai=130
   
    
    if panjtai>80 and panjtai<90:
        panjtai=90
    if panjtai>90 and panjtai<100:
        panjtai=100
    if panjtai>100 and panjtai<110:
        panjtai=110
    if panjtai>110 and panjtai<120:
        panjtai=120
    if panjtai>120 and panjtai<130:
        panjtai=130
   

        
    if shishtai>80 and shishtai<90:
        shishtai=90
    if shishtai>90 and shishtai<100:
        shishtai100
    if shishtai>100 and shishtai<110:
        shishtai=110
    if shishtai>110 and shishtai<120:
        shishtai=120
    if shishtai>120 and shishtai<130:
        shishtai=130

    root3=Tk()
    Arzevarag = simpledialog.askfloat('عرض شيت','  :عرض ورق مناسب را از ميان اعداد زير انتخاب کنيد' +
                                 '\n شش تايي  :\t' + format(shishtai,'.2f')+
                                 '\n پنج تايي  :\t' + format(panjtai,'.2f') +
                                 '\n چهارتايي  :\t' + format(chartai,'.2f') +
                                 '\n سه تايي   :\t' + format(setai,'.2f')   +
                                 '\n دوتايي    :\t' + format(dotai,'.2f')   +
                                 '\n تکي       :\t' + format(taki,'.2f'))

    root3.destroy()
  
    if TuleKar>=tuleYekTike:
        qn=TuleKar//tuleYekTike
        qn2=Arzevarag//(arz)
        qnt=(qn*qn2)
    else:
        qn=TuleKar//nim
        qn2=Arzevarag//(arz)
        qnt=(qn*qn2)/2
    


    pert= format(Arzevarag%arz,'.2f')
    messagebox.showinfo("!هشدار", "  اين عرض به شما "+ str(qnt)+ '  عدد کار مي دهد '+
                    '\nپرت دارد  (cm2)  '+str(TuleKar)+"  x  "+str(pert)+'  عرض منتخب ')

    area=(Arzevarag*TuleKar)/(qnt*10000)
    Area.set(area)
    
    q= messagebox.askquestion("چاپ","آيا کارتن چاپ دارد؟",icon='question')
    
    if q=='yes':
        kind='*****.کارتن چاپ دارد *****        '
        qntPrint=simpledialog.askinteger("تعداد چاپ","چند عدد چاپ دارد؟")
        pricePerprint=simpledialog.askinteger("قيمت چاپ","قيمت هر عدد چاپ چقدر ميباشد؟")
        printPrice=qntPrint*pricePerprint
    else:
        kind='*****.کارتن چاپ ندارد *****       '
        printPrice=0
    pricePERm2= simpledialog.askinteger("قيمت ورق"," :قيمت خريد ورق به تومان را وارد کنيد\n"+ str(Type_of_material))
    markup=simpledialog.askfloat("ميزان سود","چند درصد روي کار ميکشيد (يه اعشار وارد کنيد)")
    price=format((((markup*pricePERm2)+pricePERm2)*area)+(printPrice),'.0f')
    #Price.set(price)
    bbb=bb*((markup*pricePERm2)+pricePERm2)
    bbbb=format(bbb+(((markup*pricePERm2)+pricePERm2)*area)+(printPrice),'.0f')
    Price.set(bbbb)
    #print(bbb)
    messagebox.showinfo("!اطلاعيه","  .با اطلاعات فوق در فولدر ثبت شد  " +str(randomRef)+'*'+customer+'.txt  '+" فايل" )
    #################### outfile###############

    outfile = open(customer+randomRef +'.txt', 'w',encoding = 'utf-8')
                  
    if Type_of_box=='معمولي':
        Type_of_box='کارتن معمولي '
    if Type_of_box=='يک طرف درب':
        Type_of_box=' کارتن يک طرف درب '
    if Type_of_box=='گوشواره اي':
        Type_of_box=' ته بسته گوشواره اي '
    if Type_of_box=='دارويي':
        Type_of_box=' جعبه در دارويي '
    if Type_of_box=='کفشي/قفلي':
        Type_of_box='کارتن قفلي/کفشي'
    if Type_of_box=='پيتزايي':
        Type_of_box=='جعبه پيتزايي'
        
    outfile.write("***************"+randomRef+" اطلاعات پيش فاکتور ***************\n"+
                  localtime+'\n'+
                  "___________________________________________\n"+
                  
                  ' | '+customer+'\t'+'\t'+'\t'+': نام مشتري '+'\n '+
                  '| '+str(L) +' x '+str(W)+' x '+str(H)+'\t'+': کارتن به مشخصات'+'\n '+
                  '| '+str(TQnt)+'\t'+'\t'+'\t'+': تعداد'+'\n '+
                  '| '+Type_of_material+'\t'+': نوع ورق'+'\n '+
                  '| '+str(Arzevarag)+' x '+str(TuleKar)+'\t'+'\t'+': ابعاد ورق'+'\n '+
                  '| '+Type_of_box +'\t'+'\t'+'نوع جعبه'+'\n '+
                  '| '+Type_of_floot+'\t'+'\t'+'\t'+': نوع فلوتينگ'+'\n '+
                  '| '+str(pricePERm2)+'\t'+'\t'+'\t'+':قيمت خريد ورق (تومان)'+'\n '+
                  '| '+'\t'+kind+'\n '+
                  '__________________________________________'+'\n'+
                  ' | '+'  تومان  '+bbbb+'\t'+'\t'+': '+Good+' قيمت ارائه شده براي محصول'+'\n'+
                  ' __________________________________________')
    
##    if Type_of_box=='کفشي/قفلي':
##        Type_of_box='کارتن قفلي/کفشي'
##
##
##
##    outfile.write("***************"+randomRef+" اطلاعات پيش فاکتور ***************\n"+
##                  localtime+'\n'+
##                  "___________________________________________\n"+
##                  '__________________________________________'+'\n'+
##                  ' | '+'  تومان  '+bbbb+'\t'+'\t'+': '+Good+' قيمت رويه و زيره'+'\n'+
##                   ' __________________________________________')
##
##              






    
                  #outfile.write(customer+'name:')
    outfile.close()

######################################################

#list bayad tarif shavad
#list=['payam','pooya']
#def search (list, Target):
   # Target=str(target.get())
    
   # for Good in list:
      #  if Good==Target:
         #  messagebox.showinfo('جستجو','اين فايل موجود مي باشد، به فلدر مراجعه شود')
       # else:
          #  messagebox.showinfo('جستجو','فايلي با اين نام موجود نيست')

            
def qExit():
    root.destroy()

def Yes():
    print('yes')
def No():
    print('no')


def Reset():
    l.set("")
    w.set("")
    h.set("")
    Qnt.set("")
    type_of_material.set("")
    type_of_box.set("")
    type_of_floot.set("")
    total.set("")
    total2.set("")
    price.set("")
    rand.set("")
    ArzeKar.set("")
    Arzevarag.set("")
    Area.set("")
    Price.set("")
    target.set("")
    good.set("")
    ################### calc1 ######################


def iCalc(source,side):
    storeObj=Frame(source, borderwidth=4, bd=4, bg='powder blue')
    storeObj.pack(side=side, expand=YES, fill=BOTH)
    return storeObj
def button(source,side,text,command=None):
    storeObj= Button(source,text=text,command=command)
    storeObj.pack(side=side,expand=YES, fill=BOTH)
    return storeObj
class app(Frame):
    def __init__(self):
        Frame.__init__(self)
        self.option_add('*Font', 'arial 20 bold')
        self.pack(expand=YES, fill=BOTH)
        self.master.title('Author: Payam Taherirostami')

    
        
        display=StringVar()
        Entry(self, relief=RIDGE,
              textvariable=display,bd=30,bg="powder blue", justify='right').pack(side=TOP,expand=YES, fill=BOTH)

        for clearBut in(["CE"],["C"]):
            erase= iCalc(self,TOP)
            for ichar in clearBut:
                button(erase,LEFT,ichar,
                   lambda storeObj=display, q=ichar: storeObj.set(''))
        for NumBut in ("789/","456*","123-","0.+"):
            FunctionNum= iCalc(self,TOP)
            for iEquals in NumBut:
                button (FunctionNum,LEFT,iEquals,lambda storeObj=display, q=iEquals: storeObj.set(storeObj.get()+ q))

        EqualsButton= iCalc(self,TOP)
        for iEquals in "=":
            if iEquals == '=':
                btniEquals = button(EqualsButton,LEFT,iEquals)
                btniEquals.bind('<ButtonRelease-1>',lambda e, s=self, storeObj=display: s.calc(storeObj), '+')
            else:
                btniEquals = button(EqualsButton,LEFT,iEquals,lambda storeObj=display, s=' %s '%iEquals: storeObj.set(storeObj.get()+s))
    def calc(self, display):
        try:
            display.set(eval(display.get()))
        except:
            display.set('ERROR')
######################### Labels and Entries ################
l=StringVar()
w=StringVar()
h=StringVar()
Qnt=StringVar()
type_of_material=StringVar()
type_of_box=StringVar()
type_of_floot=StringVar()
total=StringVar()
price=StringVar()
rand=StringVar()
ArzeKar=StringVar() 
total2=StringVar()
Arzevarag=StringVar()
Area=StringVar()
Price=StringVar()
good=StringVar()
target=StringVar()
lbl_code= Label(f1,font=('arial',16,'bold'),text='شماره پيگيري',bd=16,anchor='w')
lbl_code.grid(row=0,column=0)
txtcode=Entry(f1,font=('arial',12,'bold'),textvariable=rand,bd=10,insertwidth=4,
                   bg='Gray',justify= 'left')
txtcode.grid(row=0,column=1)
#
lbl_l= Label(f1,font=('arial',16,'bold'),text='طول',bd=16,anchor='w')
lbl_l.grid(row=1,column=0)

txtl=Entry(f1,font=('arial',12,'bold'),textvariable=l,bd=10,insertwidth=4,
                   bg='powder blue',justify= 'right')
txtl.grid(row=1,column=1)

#2
lbl_w= Label(f1,font=('arial',16,'bold'),text='عرض ',bd=16,anchor='w')
lbl_w.grid(row=2,column=0)

txtw=Entry(f1,font=('arial',12,'bold'),textvariable=w,bd=10,insertwidth=4,
                   bg='powder blue',justify= 'right')
txtw.grid(row=2,column=1)

#3
lbl_h= Label(f1,font=('arial',16,'bold'),text='ارتفاع',bd=16,anchor='w')
lbl_h.grid(row=3,column=0)

txth=Entry(f1,font=('arial',12,'bold'),textvariable=h,bd=10,insertwidth=4,
                   bg='powder blue',justify= 'right')
txth.grid(row=3,column=1)
#4
lbl_Qnt= Label(f1,font=('arial',16,'bold'),text='تعداد',bd=16,anchor='w')
lbl_Qnt.grid(row=4,column=0)

txtQnt=Entry(f1,font=('arial',12,'bold'),textvariable=Qnt,bd=10,insertwidth=4,
                   bg='powder blue',justify= 'right')
txtQnt.grid(row=4,column=1)
#5
lbl_type_of_box= Label(f1,font=('arial',16,'bold'),text='نوع کارتن',bd=16,anchor='w')
lbl_type_of_box.grid(row=5,column=0)

txttype_of_box=OptionMenu(f1,type_of_box,"معمولي","يک طرف درب","گوشواره اي","دارويي","کفشي/قفلي","پيتزايي")
txttype_of_box.configure(font=('arial',16))
txttype_of_box.grid(row=5,column=1)
#6
lbl_type_of_material= Label(f1,font=('arial',16,'bold'),text='نوع جنس',bd=16,anchor='w')
lbl_type_of_material.grid(row=6,column=0)

txttype_of_material=OptionMenu(f1,type_of_material,"لاينر دو ايراني","لاينر مازندران ايراني","کرافت دو ايراني","کرافت ايراني کرافت","کرافت مازندران ايراني",
                               "کرافت مازندران کرافت","سفيد دو ايراني", "سفيد ايراني کرافت","سفيد مازندران کرافت","کرافت مازندران 3 ايراني","غيره")
txttype_of_material.configure(font=('arial',16))
txttype_of_material.grid(row=6,column=1)
#7
lbl_type_of_floot= Label(f1,font=('arial',16,'bold'),text='نوع فلوتينگ',bd=16,anchor='w')
lbl_type_of_floot.grid(row=7,column=0)

txttype_of_floot=OptionMenu(f1,type_of_floot,"ef","cf","bf","b&cf")
txttype_of_floot.configure(font=('arial',16))
txttype_of_floot.grid(row=7,column=1)
#
lbl_good= Label(f1,font=('arial',16,'bold'),text='کد محصول',bd=16,anchor='w')
lbl_good.grid(row=0,column=3)

txtgood=Entry(f1,font=('arial',12,'bold'),textvariable=good,bd=10,insertwidth=4,
                   bg='powder blue',justify= 'right')
txtgood.grid(row=0,column=4)
#
lbl_tul1= Label(f1,font=('arial',16,'bold'),text='طول يک تکه',bd=16,anchor='w')
lbl_tul1.grid(row=1,column=3)

txttul1=Entry(f1,font=('arial',12,'bold'),textvariable= total,bd=10,insertwidth=4,
                   bg='powder blue',justify= 'right')
txttul1.grid(row=1,column=4)
#
lbl_tul2= Label(f1,font=('arial',16,'bold'),text='طول نيم کارتن',bd=16,anchor='w')
lbl_tul2.grid(row=2,column=3)

txttul2=Entry(f1,font=('arial',12,'bold'),textvariable= total2,bd=10,insertwidth=4,
                   bg='powder blue',justify= 'right')
txttul2.grid(row=2,column=4)
#

lbl_arzebox= Label(f1,font=('arial',16,'bold'),text='عرض کارتن',bd=16,anchor='w')
lbl_arzebox.grid(row=3,column=3)


txtarzebox=Entry(f1,font=('arial',12,'bold'),textvariable= ArzeKar,bd=10,insertwidth=4,
                   bg='powder blue',justify= 'right')
txtarzebox.grid(row=3,column=4)
#
lbl_arzesheet= Label(f1,font=('arial',16,'bold'),text='مساحت کار',bd=16,anchor='w')
lbl_arzesheet.grid(row=4,column=3)

txtarzesheet=Entry(f1,font=('arial',12,'bold'),textvariable= Area,bd=10,insertwidth=4,
                   bg='powder blue',justify= 'right')
txtarzesheet.grid(row=4,column=4)

lbl_Price= Label(f1,font=('arial',16,'bold'),text='قيمت محصول',bd=16,anchor='w')
lbl_Price.grid(row=5,column=3)

txtPrice=Entry(f1,font=('arial',16,'bold'),textvariable= Price,bd=15,insertwidth=4,
                   bg='white',justify= 'right')
txtPrice.grid(row=5,column=4)
txtSearch=Entry(f1,font=('arial',13,'bold'),textvariable= target,bd=10,insertwidth=4,
                   bg='yellow',justify= 'right')
txtSearch.grid(row=7,column=4)
###################### Buttons #########################################


btnYes=Button(f1,padx=3,pady=3,bd=8, fg= 'black', font=('arial',12,'bold'),
            text='Yes',bg='Green',command=Yes).grid(row=8,column=3)
btnNo=Button(f1,padx=3,pady=3,bd=8, fg= 'black', font=('arial',12,'bold'),
            text='No ',bg='Red',command=No).grid(row=8,column=5)
#btnPrint=Button(f1,padx=3,pady=3,bd=8, fg= 'White', font=('arial',12,'bold'),
            #text='Print',bg='Black').grid(row=8,column=8)
btnExit=Button(f1,padx=3,pady=3,bd=8, fg= 'White', font=('arial',12,'bold'),
            text='  خروج  ',bg='orange',command=qExit).grid(row=8,column=0)
btnReset=Button(f1,padx=3,pady=3,bd=8, fg= 'White', font=('arial',12,'bold'),
            text='  جديد  ',bg='purple',command = Reset).grid(row=8,column=1)
btnCal=Button(f1,padx=2,pady=5,bd=8, fg= 'white', font=('arial',14,'bold'),
            text='محاسبه',bg='brown',command=Ref).grid(row=6,column=4)
btnSearch=Button(f1,padx=3,pady=3,bd=8, fg= 'black', font=('arial',12,'bold'),
            text='جستجو',bg='yellow',command=Ref).grid(row=8,column=4)
#################################


########################## Calling the Funcs ##############################


if __name__=='__main__':
    app().mainloop()




root.mainloop()
#####################################


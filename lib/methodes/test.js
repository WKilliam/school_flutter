
function cejour(){
}
function cels(){
    var temcel= parseInt(document.convert.celsius.value);
    var temfar = Math.round(((temcel*9/5)+32)*10)/10;
    var temkel = Math.round((temcel+273.15)*100)/100;
    var temran = Math.round(((temcel*9/5)+491.67)*10)/10;
    document.convert.celsius.value = " "+temcel+" �C" ;
    document.convert.fahrenheit.value = " "+temfar+" �F" ;
    document.convert.kelvin.value = " "+temkel+" K" ;
    document.convert.rankine.value = " "+temran+" �Ra" ;
}
function fahr(){
    var temfar= parseInt(document.convert.fahrenheit.value);
    var temcel = Math.round(((temfar-32)*5/9)*10)/10;
    var temkel = Math.round(((temfar*5/9)+255.37)*10)/10;
    var temran = Math.round((temfar+459.67)*10)/10;
    document.convert.celsius.value = " "+temcel+" �C" ;
    document.convert.fahrenheit.value = " "+temfar+" �F" ;
    document.convert.kelvin.value = " "+temkel+" K" ;
    document.convert.rankine.value = " "+temran+" �Ra" ;
}
function kelv(){
    var temkel= parseInt(document.convert.kelvin.value);
    var temcel = Math.round((temkel-273.15)*100)/100;
    var temfar = Math.round(((temkel*(9/5))-459.67)*10)/10;
    var temran = Math.round((temkel*9/5)*10)/10;
    document.convert.celsius.value = " "+temcel+" �C" ;
    document.convert.fahrenheit.value = " "+temfar+" �F" ;
    document.convert.kelvin.value = " "+temkel+" K" ;
    document.convert.rankine.value = " "+temran+" �Ra" ;
}
function rank(){
    var temran= parseInt(document.convert.rankine.value);
    var temcel = Math.round(((temran-491.67)*5/9)*10)/10;
    var temfar = Math.round(((temcel*9/5)+32)*10)/10;
    var temkel = Math.round((temcel+273.15)*10)/10;
    document.convert.celsius.value = " "+temcel+" �C" ;
    document.convert.fahrenheit.value = " "+temfar+" �F" ;
    document.convert.kelvin.value = " "+temkel+" K" ;
    document.convert.rankine.value = " "+temran+" �Ra" ;
}
// Binaire
String.prototype.hexa_en_decimal = function() {
    var nombre = eval("0x" + this);
    if ((arguments.length) && arguments[0]) {
        if (!(this.charAt(0) < "8")) {
            var compl = -1;
            for (var i=0;i<this.length;i++) compl <<= 4;
            nombre |= compl;
        }
    }
    return nombre;
}
String.prototype.intercale_car = function(car, intervale) {
    var chaine = "";
    for (var i=0;i<this.length;i+=intervale) {
        chaine += (i ? car : "") + this.substr(i, intervale);
    }
    return chaine;
}
function inverse(x)
{
    var y=""
    for(j=x.length;j>=0;j--)
    {y=y+x.charAt(j)}
    return y
}
function affiche(bdeci){
    document.conv_bin.decim.value = " "+bdeci;
    var x=(bdeci.toString(2));
    x=inverse(x);
    x=x.intercale_car(" ", 4);
    document.conv_bin.bina.value = " "+inverse(x);
    var x=(bdeci.toString(8));
    x=inverse(x);
    x=x.intercale_car(" ", 4);
    document.conv_bin.octal.value = " "+(inverse(x));
    var hexa1=(bdeci.toString(16)).toUpperCase();
    x=inverse(hexa1);
    x=x.intercale_car(" ", 4);
    document.conv_bin.hexad.value = " "+inverse(x);
    hexa_decimal = hexa1.hexa_en_decimal(true);
    document.conv_bin.decim2.value = " "+hexa_decimal;
}
function deci(){
    var bdeci= Math.abs(parseInt(document.conv_bin.decim.value));
    affiche(bdeci)
}
function bin(){
    var bdeci= Math.abs(parseInt(document.conv_bin.bina.value, 2));
    affiche(bdeci)
}
function octa(){
    var bdeci= Math.abs(parseInt(document.conv_bin.octal.value, 8));
    affiche(bdeci)
}
function hexa(){
    var bdeci= parseInt(document.conv_bin.hexad.value, 16);
    affiche(bdeci)
}
function octet1(){
    var valoctet1= parseFloat(document.conv_bin2.valoctet1.value);
    var valselect = document.conv_bin2.select.value;
    var valselect2 = document.conv_bin2.select2.value;
    var valoctet2= "1";
    switch(valselect) {
        case "o":
            switch(valselect2) {
                case "b":
                    valoctet2= valoctet1*Math.pow(2,3);
                    break;
                case "o":
                    valoctet2= valoctet1;
                    break;
                case "k":
                    valoctet2= valoctet1/Math.pow(2,10);
                    break;
                case "m":
                    valoctet2= valoctet1/Math.pow(2,20);
                    break;
                case "g":
                    valoctet2= valoctet1/Math.pow(2,30);
                    break;
                case "t":
                    valoctet2= valoctet1/Math.pow(2,40);
                    break;
            }
            break;
        case "k":
            switch(valselect2) {
                case "b":
                    valoctet2= valoctet1*Math.pow(2,13);
                    break;
                case "o":
                    valoctet2= valoctet1*Math.pow(2,10);
                    break;
                case "k":
                    valoctet2= valoctet1;
                    break;
                case "m":
                    valoctet2= valoctet1/Math.pow(2,10);
                    break;
                case "g":
                    valoctet2= valoctet1/Math.pow(2,20);
                    break;
                case "t":
                    valoctet2= valoctet1/Math.pow(2,30);
                    break;
            }
            break;
        case "m":
            switch(valselect2) {
                case "b":
                    valoctet2= valoctet1*Math.pow(2,23);
                    break;
                case "o":
                    valoctet2= valoctet1*Math.pow(2,20);
                    break;
                case "k":
                    valoctet2= valoctet1*Math.pow(2,10);
                    break;
                case "m":
                    valoctet2= valoctet1;
                    break;
                case "g":
                    valoctet2= valoctet1/Math.pow(2,10);
                    break;
                case "t":
                    valoctet2= valoctet1/Math.pow(2,20);
                    break;
            }
            break;
        case "g":
            switch(valselect2) {
                case "b":
                    valoctet2= valoctet1*Math.pow(2,33);
                    break;
                case "o":
                    valoctet2= valoctet1*Math.pow(2,30);
                    break;
                case "k":
                    valoctet2= valoctet1*Math.pow(2,20);
                    break;
                case "m":
                    valoctet2= valoctet1*Math.pow(2,10);
                    break;
                case "g":
                    valoctet2= valoctet1;
                    break;
                case "t":
                    valoctet2= valoctet1/Math.pow(2,10);
                    break;
            }
            break;
        case "t":
            switch(valselect2) {
                case "b":
                    valoctet2= valoctet1*Math.pow(2,43);
                    break;
                case "o":
                    valoctet2= valoctet1*Math.pow(2,40);
                    break;
                case "k":
                    valoctet2= valoctet1*Math.pow(2,30);
                    break;
                case "m":
                    valoctet2= valoctet1*Math.pow(2,20);
                    break;
                case "g":
                    valoctet2= valoctet1*Math.pow(2,10);
                    break;
                case "t":
                    valoctet2= valoctet1;
                    break;
            }
            break;
    }

    document.conv_bin2.valoctet2.value = " "+valoctet2;
}
function cara(){
    var bcara= escape(document.conv_bin3.caract.value);
    document.conv_bin3.ascii.value = " "+bcara;
}
function asci(){
    var basci= unescape(document.conv_bin3.ascii.value);
    document.conv_bin3.caract.value = " "+basci;
}
// Longueur
// Definition
function multi(lmetre){
    document.conv_long.fermi.value = " "+lmetre*1e15;
    document.conv_long.stigma.value = " "+lmetre*1e12;
    document.conv_long.angstrom.value = " "+lmetre*1e10+" �";
    document.conv_long.microm.value = " "+lmetre*1e6+" �m" ;
    document.conv_long.millim.value = " "+lmetre*1e3+" mm" ;
    document.conv_long.centim.value = " "+lmetre*1e2+" cm" ;
    document.conv_long.kilom.value = " "+lmetre/1e3+" km" ;
    document.conv_long.brasse.value = " "+Math.round(lmetre/1.8288*1e2)/1e2+" fm" ;
    document.conv_long.perche.value = " "+Math.round(lmetre/5.0292*1e2)/1e2+" rd" ;
    document.conv_long.chain.value = " "+Math.round(lmetre/20.1168*1e2)/1e2+" ch" ;
    document.conv_long.furlong.value = " "+Math.round(lmetre/201.168*1e2)/1e2+" fur" ;
    document.conv_long.encablure.value = " "+Math.round(lmetre/185.2*1e2)/1e2;
    document.conv_long.milen.value = " "+Math.round(lmetre/1852*1e2)/1e2+" NM" ;
    document.conv_long.ua.value = " "+Math.round(lmetre/1.495979e+11*1e2)/1e2+" ua" ;
    document.conv_long.al.value = " "+Math.round(lmetre/9.46073e+15*1e2)/1e2;
    document.conv_long.parsec.value = " "+Math.round(lmetre/3.085678e+16*1e2)/1e2+" pc" ;
}
function metr(){
    var lmetre= parseFloat(document.conv_long.metre.value);
    var lpouce = Math.round(((lmetre /2.54)*100)*100)/100;
    var lpied = Math.round(lmetre/0.3048*100)/100;
    var lyard = Math.round(lmetre/0.9144*100)/100;
    var lmile = Math.round(lmetre/1609.344*100)/100;
    document.conv_long.metre.value = " "+lmetre+" m" ;
    document.conv_long.pouce.value = " "+lpouce+" in" ;
    document.conv_long.pied.value = " "+lpied+" ft" ;
    document.conv_long.yard.value = " "+lyard+" yd" ;
    document.conv_long.mile.value = " "+lmile+" mi" ;
    multi(lmetre);
}
function inch(){
    var lpouce= parseFloat(document.conv_long.pouce.value);
    var lmetre = Math.round((lpouce*2.54/100)*1e4)/1e4;
    var lpied = Math.round((lpouce/12)*100)/100;
    var lyard = Math.round((lpouce/36)*100)/100;
    var lmile = Math.round((lpouce/63360)*100)/100;
    document.conv_long.metre.value = " "+lmetre+" m" ;
    document.conv_long.pouce.value = " "+lpouce+" in" ;
    document.conv_long.pied.value = " "+lpied+" ft" ;
    document.conv_long.yard.value = " "+lyard+" yd" ;
    document.conv_long.mile.value = " "+lmile+" mi" ;
    multi(lmetre);
}
function foot(){
    var lpied= parseFloat(document.conv_long.pied.value);
    var lmetre = Math.round((lpied*0.3048)*1e4)/1e4;
    var lpouce = Math.round((lpied*12)*100)/100;
    var lyard = Math.round((lpied/3)*100)/100;
    var lmile = Math.round((lpied/5280)*100)/100;
    document.conv_long.metre.value = " "+lmetre+" m" ;
    document.conv_long.pouce.value = " "+lpouce+" in" ;
    document.conv_long.pied.value = " "+lpied+" ft" ;
    document.conv_long.yard.value = " "+lyard+" yd" ;
    document.conv_long.mile.value = " "+lmile+" mi" ;
    multi(lmetre);
}
function verge(){
    var lyard= parseFloat(document.conv_long.yard.value);
    var lmetre = Math.round((lyard*0.9144)*10000)/10000;
    var lpouce = Math.round((lyard*36)*100)/100;
    var lpied = Math.round((lyard*3)*100)/100;
    var lmile = Math.round((lyard/1760)*100)/100;
    document.conv_long.metre.value = " "+lmetre+" m" ;
    document.conv_long.pouce.value = " "+lpouce+" in" ;
    document.conv_long.pied.value = " "+lpied+" ft" ;
    document.conv_long.yard.value = " "+lyard+" yd" ;
    document.conv_long.mile.value = " "+lmile+" mi" ;
    multi(lmetre);
}
function mille(){
    var lmile= parseFloat(document.conv_long.mile.value);
    var lmetre = Math.round((lmile*1609.344)*100)/100;
    var lpouce = Math.round((lmile*63360)*100)/100;
    var lpied = Math.round((lmile*5280)*100)/100;
    var lyard = Math.round((lmile*1760)*100)/100;
    document.conv_long.metre.value = " "+lmetre+" m" ;
    document.conv_long.pouce.value = " "+lpouce+" in" ;
    document.conv_long.pied.value = " "+lpied+" ft" ;
    document.conv_long.yard.value = " "+lyard+" yd" ;
    document.conv_long.mile.value = " "+lmile+" mi" ;
    multi(lmetre);
}
function bras(){
    var lbrasse= parseFloat(document.conv_long.brasse.value);
    var lmetre = Math.round((lbrasse*1.828804)*100)/100;
    document.conv_long.metre.value = " "+lmetre+" m" ;
    metr();
}
function perch(){
    var lperche= parseFloat(document.conv_long.perche.value);
    var lmetre = Math.round((lperche*5.0292)*100)/100;
    document.conv_long.metre.value = " "+lmetre+" m" ;
    metr();
}
function chai(){
    var lchain= parseFloat(document.conv_long.chain.value);
    var lmetre = Math.round((lchain*20.11684)*100)/100;
    document.conv_long.metre.value = " "+lmetre+" m" ;
    metr();
}
function furl(){
    var lfurlong= parseFloat(document.conv_long.furlong.value);
    var lmetre = Math.round((lfurlong*201.168)*100)/100;
    document.conv_long.metre.value = " "+lmetre+" m" ;
    metr();
}
function encab(){
    var lencablure= parseFloat(document.conv_long.encablure.value);
    var lmetre = Math.round((lencablure*185.2)*100)/100;
    document.conv_long.metre.value = " "+lmetre+" m" ;
    metr();
}
function millen(){
    var lmilen= parseFloat(document.conv_long.milen.value);
    var lmetre = Math.round((lmilen*1852)*100)/100;
    document.conv_long.metre.value = " "+lmetre+" m" ;
    metr();
}
function uastro(){
    var lua= parseFloat(document.conv_long.ua.value);
    var lmetre = Math.round((lua*1.495979e11)*100)/100;
    document.conv_long.metre.value = " "+lmetre+" m" ;
    metr();
}
function alum(){
    var lal= parseFloat(document.conv_long.al.value);
    var lmetre = Math.round((lal*9.46073e15)*100)/100;
    document.conv_long.metre.value = " "+lmetre+" m" ;
    metr();
}
function parse(){
    var lparsec= parseFloat(document.conv_long.parsec.value);
    var lmetre = Math.round((lparsec*3.085678e16)*100)/100;
    document.conv_long.metre.value = " "+lmetre+" m" ;
    metr();
}
// Temps
function seco(){
    var tseco= parseFloat(document.conv_temps.seconde.value);
    var tshak = Math.round((tseco/1e-8)*100)/100;
    var tsecsi = Math.round((tseco/9.972696e-1)*100)/100;
    var tmin = Math.round((tseco/60)*100)/100;
    var tminsi = Math.round((tseco/5.983617e1)*100)/100;
    var theur = Math.round((tseco/3600)*100)/100;
    var theursi = Math.round((tseco/3.590170e3)*100)/100;
    var tjour = Math.round((tseco/86400)*100)/100;
    var tjoursi = Math.round((tseco/86164.09)*100)/100;
    var tsemai = Math.round((tseco/(7*86400))*100)/100;
    var tmoi28 = Math.round((tseco/(28*86400))*100)/100;
    var tmoi29 = Math.round((tseco/(29*86400))*100)/100;
    var tmoi30 = Math.round((tseco/(30*86400))*100)/100;
    var tmoi31 = Math.round((tseco/(31*86400))*100)/100;
    var tann = Math.round((tseco/3.1536e7)*100)/100;
    var tanbi = Math.round((tseco/(366*86400))*100)/100;
    var tanju = Math.round((tseco/31557600)*100)/100;
    var tangreg = Math.round((tseco/31556952)*100)/100;
    var tansi = Math.round((tseco/3.155815e7)*100)/100;
    var tantro= Math.round((tseco/3.155693e7)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    document.conv_temps.shake.value = " "+tshak;
    document.conv_temps.secondesi.value = " "+tsecsi;
    document.conv_temps.minute.value = " "+tmin+" min" ;
    document.conv_temps.minutesi.value = " "+tminsi;
    document.conv_temps.heure.value = " "+theur+" h" ;
    document.conv_temps.heuresi.value = " "+theursi;
    document.conv_temps.jour.value = " "+tjour+" d" ;
    document.conv_temps.joursi.value = " "+tjoursi;
    document.conv_temps.semaine.value = " "+tsemai+" sem" ;
    document.conv_temps.mois28.value = " "+tmoi28;
    document.conv_temps.mois29.value = " "+tmoi29;
    document.conv_temps.mois30.value = " "+tmoi30;
    document.conv_temps.mois31.value = " "+tmoi31;
    document.conv_temps.annee.value = " "+tann;
    document.conv_temps.anbi.value = " "+tanbi;
    document.conv_temps.anju.value = " "+tanju;
    document.conv_temps.angreg.value = " "+tangreg;
    document.conv_temps.ansid.value = " "+tansi;
    document.conv_temps.antrop.value = " "+tantro;
//
    if (tseco<59) {
        xtann=xtjour=xtmoi=xtjourm=xtheur=xtmin=0;
        var xtseco = tseco
        document.conv_temps.xtemps.value = " "+xtann+" ann�e "+xtjour+" jour ("+xtmoi+" mois et "+xtjourm+" jour ) "+xtheur+" heure "+xtmin+" min "+xtseco+" seconde";
    }
    else {
        var xtann = parseInt(tseco/3.1536e7);
        var xtjour = parseInt((tseco-(3.1536e7*xtann))/86400);
        var xtmoi = parseInt((tseco-(3.1536e7*xtann))/2629744);
        var xtjourm = parseInt((tseco-(3.1536e7*xtann)-(2626744*xtmoi))/86400);
        var xtheur = parseInt((tseco-(3.1536e7*xtann)-(86400*xtjour))/3600);
        var xtmin = parseInt((tseco-(3.1536e7*xtann)-(86400*xtjour)-(3600*xtheur))/60);
        var xtseco = parseInt(tseco-(3.1536e7*xtann)-(86400*xtjour)-(3600*xtheur)-(60*xtmin));
        document.conv_temps.xtemps.value = " "+xtann+" ann�e "+xtjour+" jour ("+xtmoi+" mois et "+xtjourm+" jour ) "+xtheur+" heure "+xtmin+" min "+xtseco+" seconde";
    }
}
function shak(){
    var tshak = parseInt(document.conv_temps.shake.value);
    var tseco = Math.round((tshak*1e-8)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function fsecsi(){
    var tsecsi = parseInt(document.conv_temps.secondesi.value);
    var tseco = Math.round((tsecsi*9.972696e-1)*1e7)/1e7;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function minu(){
    var tmin = parseInt(document.conv_temps.minute.value);
    var tseco = Math.round((tmin*60)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function fminsi(){
    var tminsi = parseInt(document.conv_temps.minutesi.value);
    var tseco = Math.round((tminsi*5.983617e1)*1e5)/1e5;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function heur(){
    var theur = parseInt(document.conv_temps.heure.value);
    var tseco = Math.round((theur*3600)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function fheursi(){
    var theursi = parseInt(document.conv_temps.heuresi.value);
    var tseco = Math.round((theursi*3.590170e3)*1e3)/1e3;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function fjour(){
    var tjour = parseInt(document.conv_temps.jour.value);
    var tseco = Math.round((tjour*86400)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function fjoursi(){
    var tjoursi = parseInt(document.conv_temps.joursi.value);
    var tseco = Math.round((tjoursi*86164.09)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function sema(){
    var tsemai = parseInt(document.conv_temps.semaine.value);
    var tseco = Math.round((tsemai*7*86400)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function moi28(){
    var tmoi28 = parseInt(document.conv_temps.mois28.value);
    var tseco = Math.round((tmoi28*28*86400)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function moi29(){
    var tmoi29 = parseInt(document.conv_temps.mois29.value);
    var tseco = Math.round((tmoi29*29*86400)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function moi30(){
    var tmoi30 = parseInt(document.conv_temps.mois30.value);
    var tseco = Math.round((tmoi30*30*86400)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function moi31(){
    var tmoi31 = parseInt(document.conv_temps.mois31.value);
    var tseco = Math.round((tmoi31*31*86400)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function fan(){
    var tann = parseInt(document.conv_temps.annee.value);
    var tseco = Math.round((tann*3.1536e7)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function fanbi(){
    var tanbi = parseInt(document.conv_temps.anbi.value);
    var tseco = Math.round((tanbi*366*86400)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function fanju(){
    var tanju = parseInt(document.conv_temps.anju.value);
    var tseco = Math.round((tanju*31557600)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function fangreg(){
    var tangreg = parseInt(document.conv_temps.angreg.value);
    var tseco = Math.round((tangreg*31556952)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function fansid(){
    var tansi = parseInt(document.conv_temps.ansid.value);
    var tseco = Math.round((tansi*3.155815e7)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function fantrop(){
    var tantro = parseInt(document.conv_temps.antrop.value);
    var tseco = Math.round((tantro*31556925.975)*100)/100;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function fdate2(){
    var tdate1 = new Date(document.conv_date.date1.value);
    var tdate2 = new Date(document.conv_date.date2.value);
    time1 = (tdate2.getTime() - tdate1.getTime());
    var tseco = Math.floor(time1/1000);
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}
function fdate0(){
    today = new Date()
    var tdate0 = new Date(document.conv_date.date0.value);
    timeold = (today.getTime() - tdate0.getTime());
    var tseco = Math.floor(timeold/1000);
    document.conv_date.datesys.value = today ;
    document.conv_temps.seconde.value = " "+tseco+" s" ;
    seco();
}

//*******************************************************************************************
// Masse
function f_kilog(){
    var mkilog= parseFloat(document.conv_masse.kilog.value);
    var mgrain = Math.round((mkilog/64.79891e-6)*100)/100;
    var mcarat = Math.round((mkilog/200e-6)*100)/100;
    var mgramme = Math.round((mkilog/1e-3)*100)/100;
    var monce = Math.round((mkilog/2.834952e-2)*100)/100;
    var moncet = Math.round((mkilog/3.110348e-2)*100)/100;
    var mlivre = Math.round((mkilog/4.535924e-1)*100)/100;
    var mquintal = Math.round((mkilog/1e2)*100)/100;
    var mtonnec = Math.round((mkilog/9.071847e2)*100)/100;
    var mtonne = Math.round((mkilog/1e3)*100)/100;
    var mtonnel = Math.round((mkilog/1.016047e3)*100)/100;
    var mmasset = Math.round((mkilog/5.9736e24)*100)/100;
    document.conv_masse.kilog.value = " "+mkilog+" Kg" ;
    document.conv_masse.grain.value = " "+mgrain+" gr" ;
    document.conv_masse.carat.value = " "+mcarat+" kt" ;
    document.conv_masse.gramme.value = " "+mgramme+" g" ;
    document.conv_masse.once.value = " "+monce+" oz" ;
    document.conv_masse.oncet.value = " "+moncet+" oz(troy)" ;
    document.conv_masse.livre.value = " "+mlivre+" lb" ;
    document.conv_masse.quintal.value = " "+mquintal;
    document.conv_masse.tonnec.value = " "+mtonnec;
    document.conv_masse.tonne.value = " "+mtonne+" t" ;
    document.conv_masse.tonnel.value = " "+mtonnel;
    document.conv_masse.masset.value = " "+mmasset;
}
function f_gram(){
    var mgramme= parseFloat(document.conv_masse.gramme.value);
    var mkilog = Math.round((mgramme/1e3)*1000)/1000;
    document.conv_masse.kilog.value = " "+mkilog+" Kg" ;
    f_kilog();
}
function f_once(){
    var monce= parseFloat(document.conv_masse.once.value);
    var mkilog = Math.round((monce*2.834952e-2)*1e6)/1e6;
    document.conv_masse.kilog.value = " "+mkilog+" Kg" ;
    f_kilog();
}
function f_oncet(){
    var moncet= parseFloat(document.conv_masse.oncet.value);
    var mkilog = Math.round((moncet*3.110348e-2)*1e6)/1e6;
    document.conv_masse.kilog.value = " "+mkilog+" Kg" ;
    f_kilog();
}
function f_grain(){
    var mgrain= parseFloat(document.conv_masse.grain.value);
    var mkilog = Math.round((mgrain*64.79891e-6)*1e7)/1e7;
    document.conv_masse.kilog.value = " "+mkilog+" Kg" ;
    f_kilog();
}
function f_carat(){
    var mcarat= parseFloat(document.conv_masse.carat.value);
    var mkilog = Math.round((mcarat*200e-6)*1e6)/1e6;
    document.conv_masse.kilog.value = " "+mkilog+" Kg" ;
    f_kilog();
}
function f_livre(){
    var mlivre= parseFloat(document.conv_masse.livre.value);
    var mkilog = Math.round((mlivre*4.535924e-1)*1e6)/1e6;
    document.conv_masse.kilog.value = " "+mkilog+" Kg" ;
    f_kilog();
}
function f_quint(){
    var mquintal= parseFloat(document.conv_masse.quintal.value);
    var mkilog = Math.round((mquintal*1e2)*1000)/1000;
    document.conv_masse.kilog.value = " "+mkilog+" Kg" ;
    f_kilog();
}
function f_tonnec(){
    var mtonnec= parseFloat(document.conv_masse.tonnec.value);
    var mkilog = Math.round((mtonnec*9.071847e2)*1000)/1000;
    document.conv_masse.kilog.value = " "+mkilog+" Kg" ;
    f_kilog();
}
function f_tonne(){
    var mtonne= parseFloat(document.conv_masse.tonne.value);
    var mkilog = Math.round((mtonne*1e3)*1000)/1000;
    document.conv_masse.kilog.value = " "+mkilog+" Kg" ;
    f_kilog();
}
function f_tonnel(){
    var mtonnel= parseFloat(document.conv_masse.tonnel.value);
    var mkilog = Math.round((mtonnel*1.016047e3)*1e6)/1e6;
    document.conv_masse.kilog.value = " "+mkilog+" Kg" ;
    f_kilog();
}
function f_masset(){
    var mmasset= parseFloat(document.conv_masse.masset.value);
    var mkilog = Math.round((mmasset*5.9736e24)*1e5)/1e5;
    document.conv_masse.kilog.value = " "+mkilog+" Kg" ;
    f_kilog();
}
// Vitesse
function fmetre_s(){
    var vmetre_s= parseFloat(document.conv_vitesse.metre_sec.value);
    var vpied_s = Math.round((vmetre_s/0.3048)*1e4)/1e4;
    var vkmetre_h = Math.round((vmetre_s/1000*3600)*1e6)/1e6;
    var vmile_h = Math.round((vmetre_s/0.44704)*1e5)/1e5;
    var vnoeud = Math.round((vmetre_s/0.514444)*1e4)/1e4;
    var vmill_s = Math.round((vmetre_s/0.001)*1e4)/1e4;
    var vcenti_s = Math.round((vmetre_s/0.01)*1e4)/1e4;
    var vcenti_mn = Math.round((vmetre_s/0.01*60)*1e4)/1e4;
    var vmetre_mn = Math.round((vmetre_s*60)*1e2)/1e2;
    var vkmetre_s = Math.round((vmetre_s/1000)*1e4)/1e4;
    var vpouce_s = Math.round((vmetre_s/0.0254)*1e4)/1e4;
    var vpied_mn = Math.round((vmetre_s/0.00508)*1e5)/1e5;
    var vpied_h = Math.round((vmetre_s/8.46667e-5)*1e4)/1e4;
    var vmach = Math.round((vmetre_s/340)*1e4)/1e4;
    var vmetre_h = Math.round((vmetre_s*3600)*1e4)/1e4;
    var vmile_mn = Math.round((vmetre_s/26.8224)*1e6)/1e6;
    var vmile_sec = Math.round((vmetre_s/1609.344)*1e7)/1e7;
    var vlumiere = Math.round((vmetre_s/299792458)*1e4)/1e4;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    document.conv_vitesse.pied_sec.value = " "+vpied_s+" ft/s, fps" ;
    document.conv_vitesse.kmetre_h.value = " "+vkmetre_h+" km/h" ;
    document.conv_vitesse.mile_h.value = " "+vmile_h+" mph, mi/h" ;
    document.conv_vitesse.noeud.value = " "+vnoeud+" knot" ;
    document.conv_vitesse.mill_sec.value = " "+vmill_s+" mm/s" ;
    document.conv_vitesse.centi_sec.value = " "+vcenti_s+" cm/s" ;
    document.conv_vitesse.centi_mn.value = " "+vcenti_mn+" cm/min" ;
    document.conv_vitesse.metre_mn.value = " "+vmetre_mn+" m/min" ;
    document.conv_vitesse.kmetre_sec.value = " "+vkmetre_s+" km/s" ;
    document.conv_vitesse.pouce_sec.value = " "+vpouce_s+" in/s, ips" ;
    document.conv_vitesse.pied_mn.value = " "+vpied_mn+" ft/min, fpm" ;
    document.conv_vitesse.pied_h.value = " "+vpied_h+" ft/h, fph" ;
    document.conv_vitesse.mach.value = " "+vmach+" M" ;
    document.conv_vitesse.metre_h.value = " "+vmetre_h+" m/h" ;
    document.conv_vitesse.mile_mn.value = " "+vmile_mn;
    document.conv_vitesse.mile_sec.value = " "+vmile_sec;
    document.conv_vitesse.lumiere.value = " "+vlumiere;
}
function fpied_s(){
    var vpied_s= parseFloat(document.conv_vitesse.pied_sec.value);
    var vmetre_s = Math.round((vpied_s*0.3048)*1e4)/1e4;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fkmetre_h(){
    var vkmetre_h= parseFloat(document.conv_vitesse.kmetre_h.value);
    var vmetre_s = Math.round((vkmetre_h*1000/3600)*1e6)/1e6;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fmile_h(){
    var vmile_h= parseFloat(document.conv_vitesse.mile_h.value);
    var vmetre_s = Math.round((vmile_h*0.44704)*1e4)/1e4;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fnoeud(){
    var vnoeud= parseFloat(document.conv_vitesse.noeud.value);
    var vmetre_s = Math.round((vnoeud*0.514444)*1e4)/1e4;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fmill_s(){
    var vmill_sec= parseFloat(document.conv_vitesse.mill_sec.value);
    var vmetre_s = Math.round((vmill_sec*0.001)*1e4)/1e4;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fcenti_s(){
    var vcenti_sec= parseFloat(document.conv_vitesse.centi_sec.value);
    var vmetre_s = Math.round((vcenti_sec*0.01)*1e4)/1e4;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fcenti_mn(){
    var vcenti_mn= parseFloat(document.conv_vitesse.centi_mn.value);
    var vmetre_s = Math.round((vcenti_mn*0.01/60)*1e5)/1e5;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fmetre_mn(){
    var vmetre_mn= parseFloat(document.conv_vitesse.metre_mn.value);
    var vmetre_s = Math.round((vmetre_mn/60)*1e4)/1e4;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fkmetre_s(){
    var vkmetre_sec= parseFloat(document.conv_vitesse.kmetre_sec.value);
    var vmetre_s = Math.round((vkmetre_sec*1000)*1e4)/1e4;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fpouce_s(){
    var vpouce_sec= parseFloat(document.conv_vitesse.pouce_sec.value);
    var vmetre_s = Math.round((vpouce_sec*0.0254)*1e4)/1e4;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fpied_mn(){
    var vpied_mn= parseFloat(document.conv_vitesse.pied_mn.value);
    var vmetre_s = Math.round((vpied_mn*0.00508)*1e5)/1e5;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fpied_h(){
    var vpied_h= parseFloat(document.conv_vitesse.pied_h.value);
    var vmetre_s = Math.round((vpied_h*8.46667e-5)*1e5)/1e5;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fmach(){
    var vmach= parseFloat(document.conv_vitesse.mach.value);
    var vmetre_s = Math.round((vmach*340)*1e4)/1e4;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fmetre_h(){
    var vmetre_h= parseFloat(document.conv_vitesse.metre_h.value);
    var vmetre_s = Math.round((vmetre_h/3600)*1e6)/1e6;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fmile_mn(){
    var vmile_mn= parseFloat(document.conv_vitesse.mile_mn.value);
    var vmetre_s = Math.round((vmile_mn*26.8224)*1e7)/1e7;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function fmile_sec(){
    var vmile_sec= parseFloat(document.conv_vitesse.mile_sec.value);
    var vmetre_s = Math.round((vmile_sec*1609.344)*1e7)/1e7;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
function flumiere(){
    var vlumiere= parseFloat(document.conv_vitesse.lumiere.value);
    var vmetre_s = Math.round((vlumiere*299792458)*1e4)/1e4;
    document.conv_vitesse.metre_sec.value = " "+vmetre_s+" m/s" ;
    fmetre_s();
}
//  Fin script -->
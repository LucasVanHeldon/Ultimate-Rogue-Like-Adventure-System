//::///////////////////////////////////////////////
//:: Name: Greyhawk Calander Script
//:: FileName: GrewyhawkCalander
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
   This is meant to be put in the OnUsed event of a placeable object, such as a sundial.
   It will give the current date, using the Oeridian month and measuring the year in Common Years (CY).
   This requires you set the proper year in the module properties, as it defaults to the Forgotten Realms roll of years.
   NOTE: Due to the way time is kept in the NWN engine, this calendar does not include the four feast weeks.
   It only has the dozen 28-day months.
   Therefore I didn't bother with information about the phases of Oerth's two moons, since Celene is tied to the festweeks.
*/
//:://////////////////////////////////////////////
//:: Created By: I don't remember who created this script, or where I got it from. But whoever created it, THANK YOU!
//:: Created On: Sometime back in July 2003 is when I downloaded it from somewhere online.
//:://////////////////////////////////////////////



void main()
{
int nHour = GetTimeHour();
int nMonth = GetCalendarMonth();
int nDay = GetCalendarDay();
int nYear = GetCalendarYear();
string sMonth;

    switch (nMonth) {
      case 1:
           sMonth = "Fireseek";
           break;
      case 2:
           sMonth = "Readying";
           break;
      case 3:
           sMonth = "Coldeven";
           break;
      case 4:
           sMonth = "Planting";
           break;
      case 5:
           sMonth = "Flocktime";
           break;
      case 6:
           sMonth = "Wealsun";
           break;
      case 7:
           sMonth = "Reaping";
           break;
      case 8:
           sMonth = "Goodmonth";
           break;
      case 9:
           sMonth = "Harvester";
           break;
      case 10:
           sMonth = "Patchwall";
           break;
      case 11:
           sMonth = "Ready'reat";
           break;
      case 12:
           sMonth = "Sunsebb";
           break;
      default:
           break;
    }

//    SpeakString("The date is: " + sMonth + " " + (IntToString(nDay)) +
//                ", " + (IntToString(nYear)) + " CY.");

    SpeakString("It is day " + (IntToString(nDay)) + " of the month of " + sMonth +
                ", " + (IntToString(nYear)) + " CY.");
}


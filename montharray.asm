		.ORIG		x3000
		AND		R0, R0, #0		;Clears R0
		LEA		R1, months 		;Loads the address of our array of months into R1
		LD		R2, DESIREDMONTH	;R2 now has the VALUE (LD) of n, so R2 = 5

LOOP		ADD		R2, R2, #-1		;R2 = 5 - 1 
		BRz		DONE			;If R2 equals 0, then DONE
		ADD		R0, R0, #10		;R0 now equals 10, which the size of each .STRINGZ month ("MAY\0     " = 10 characters) So if R0=20, then we are at March
		BR		LOOP

DONE		ADD		R0, R0, R1		;displays the current month. R0 will have the location of the month
		PUTS

		HALT

DESIREDMONTH	.FILL		5			;Since this is 5, we want MAY to display
months		.STRINGZ	"JANUARY\0 "
		.STRINGZ	"FEBRUARY\0"
		.STRINGZ	"MARCH\0   "
		.STRINGZ	"APRIL\0   "
		.STRINGZ	"MAY\0     "
		.STRINGZ	"JUNE\0    "
		.STRINGZ	"JULY\0    "
		.STRINGZ	"AUGUST\0  "
		.STRINGZ	"SEPTEMBER"
		.STRINGZ	"OCTOBER\0 "
		.STRINGZ	"NOVEMBER\0"
		.STRINGZ	"DECEMBER\0"

		.END
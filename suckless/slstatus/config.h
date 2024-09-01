/* interval between updates (in ms) */
const unsigned int interval = 30000;

/* text to show if no value can be retrieved */
static const char unknown_str[] = "n/a";

/* maximum output string length */
#define MAXLEN 2048

static const struct arg args[] = {
	/* function 	 format            argument */
	{ run_command,   " 󰕾 %s%% | ",  "pamixer --get-volume" },
	{ ram_perc, 	 " %s%% | ",   NULL },
	{ cpu_perc, 	 "󰀻 %s%% | ",	NULL },
	{ datetime, 	 " %s | ",     "%a, %d %b |  %H:%M" },
	{ battery_state, "%s ",         "BAT0" },
	{ battery_perc,  "%s%% ",     "BAT0" },
};

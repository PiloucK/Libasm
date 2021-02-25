#include "libasm.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <unistd.h>

int
	main(void) {
	// printf("%zu\n", ft_strlen(""));
	// printf("%zu\n", ft_strlen("01"));
	// printf("%zu\n", ft_strlen("0123456789"));
	// printf("%zu\n", ft_strlen("01asoetbxas<opxbi/rg,d <.u \
	// 	xka/rgxp, s<dn t;bh ;oseou ;oekx ;o  u"));
	// printf("%zu\n\n", ft_strlen("\0 123456789"));

	char *test = malloc(10);
	char *toto = "toto0";
	char *tata = "toto2";

	// printf("strcmp = %d\n", strcmp(toto, tata));
	// printf("ft_strcmp = %d\n", ft_strcmp(toto, tata));
	// toto = "toto";
	// tata = "toto";
	// printf("strcmp = %d\n", strcmp(toto, tata));
	// printf("ft_strcmp = %d\n", ft_strcmp(toto, tata));
	// toto = "toto2";
	// tata = "toto0";
	// printf("strcmp = %d\n", strcmp(toto, tata));
	// printf("ft_strcmp = %d\n", ft_strcmp(toto, tata));
	// toto = "toto";
	// tata = "";
	// printf("strcmp = %d\n", strcmp(toto, tata));
	// printf("ft_strcmp = %d\n", ft_strcmp(toto, tata));
	// toto = "";
	// tata = "toto";
	// printf("strcmp = %d\n", strcmp(toto, tata));
	// printf("ft_strcmp = %d\n", ft_strcmp(toto, tata));
	// toto = "";
	// tata = "";
	// printf("strcmp = %d\n", strcmp(toto, tata));
	// printf("ft_strcmp = %d\n", ft_strcmp(toto, tata));
	// toto = "toto";
	// tata = "totototo";
	// printf("strcmp = %d\n", strcmp(toto, tata));
	// printf("ft_strcmp = %d\n", ft_strcmp(toto, tata));
	// toto = "totototo";
	// tata = "toto";
	// printf("strcmp = %d\n", strcmp(toto, tata));
	// printf("ft_strcmp = %d\n", ft_strcmp(toto, tata));
	// toto = "0";
	// tata = "1";

	ft_strcpy(test, tata);
	printf("%s\n", test);
	// toto = "toto";
	// tata = "tata";
	// printf("ft_strcpy = %s\n", ft_strcpy(toto, tata));
	// toto = "toto";
	// tata = "toto";
	// printf("ft_strcpy = %s\n", ft_strcpy(toto, tata));
	// toto = "toto2";
	// tata = "toto0";
	// printf("ft_strcpy = %s\n", ft_strcpy(toto, tata));
	// toto = "toto";
	// tata = "";
	// printf("ft_strcpy = %s\n", ft_strcpy(toto, tata));
	// toto = "";
	// tata = "toto";
	// printf("ft_strcpy = %s\n", ft_strcpy(toto, tata));
	// toto = "";
	// tata = "";
	// printf("ft_strcpy = %s\n", ft_strcpy(toto, tata));
	// toto = "toto";
	// tata = "totototo";
	// printf("ft_strcpy = %s\n", ft_strcpy(toto, tata));
	// toto = "totototo";
	// tata = "toto";
	// printf("ft_strcpy = %s\n", ft_strcpy(toto, tata));
	char *toast = strdup(test);
	printf("---%s\n", toast);
	free(toast);
	toast = strdup(toto);
	printf("---%s\n", toast);
	free(toast);
	free(test);

	printf("%d\n", ft_atoi_base("---j0000", "012345678j"));
	printf("%d\n", ft_atoi_base("1", "0123456789 "));
	printf("%d\n", ft_atoi_base("1", "0123456+789"));
	printf("%d\n", ft_atoi_base("1", "0123456"));
	printf("%d\n", ft_atoi_base("1", "01"));
	printf("%d\n", ft_atoi_base("1", "012345-6789"));
	printf("%d\n", ft_atoi_base("1", "01234566789"));
	printf("%d\n", ft_atoi_base("1", ""));
	printf("%d\n", ft_atoi_base("1102101011", "01"));
	return 0;	
}

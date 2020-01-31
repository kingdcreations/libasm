/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   main.c                                           .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: tmarcon <marvin@le-101.fr>                 +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2020/01/21 10:28:19 by tmarcon      #+#   ##    ##    #+#       */
/*   Updated: 2020/01/31 13:49:01 by tmarcon     ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include "libasm.h"

int	main(void)
{
	char s[] = "salut";
	char s2[10] = "salut";
	char *dup;
	char *dup2;

	printf("%lu\n", ft_strlen(s));
	printf("%lu\n", strlen(s));

	printf("\n");

	printf("%s\n", ft_strcpy(s2, "az"));
	printf("%s\n", strcpy(s2, "az"));

	printf("\n");

	printf("%d\n", ft_strcmp("\xff\xfe", "\xff"));
	printf("%d\n", strcmp("\xff\xfe", "\xff"));

	printf("\n");

	printf(" %zd\n", ft_write(2, "salut", 5));
	printf(" %zd\n", write(2, "salut", 5));
	printf(" %zd\n", ft_write(2, NULL, 5));
	printf(" %zd\n", write(2, NULL, 5));

	printf("\n");

	// printf(" %zd\n", ft_read(0, buf, 9));
	// printf(" %zd\n", read(0, buf, 9));
	printf(" %zd\n", ft_read(4, NULL, 9));
	printf(" %zd\n", read(4, NULL, 9));

	printf("\n");

	dup = ft_strdup("salut");
	printf("%s\n", dup);
	free(dup);
	dup2 = strdup("salut");
	printf("%s\n", dup2);
	free(dup2);

	printf("\n");

	return (0);
}

/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   main_bonus.c                                     .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: tmarcon <marvin@le-101.fr>                 +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2020/01/21 10:28:19 by tmarcon      #+#   ##    ##    #+#       */
/*   Updated: 2020/01/31 13:57:32 by tmarcon     ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include "libasm.h"

t_list	*ft_create_elem(void *data)
{
	t_list *element;

	if (!(element = malloc(sizeof(t_list))))
		return (NULL);
	element->data = data;
	element->next = NULL;
	return (element);
}

int		main(void)
{
	t_list	*ptr;

	ptr = 0;
	// ptr = ft_create_elem(ptr);
	ft_list_push_front(&ptr, "b");
	ft_list_push_front(&ptr, "a");
	ft_list_push_front(NULL, "g");
	ft_list_push_front(&ptr, "n");
	ft_list_push_front(&ptr, "d");
	ft_list_push_front(&ptr, "v");
	ft_list_push_front(&ptr, "f");
	ft_list_push_front(&ptr, "p");
	ft_list_push_front(&ptr, "c");
	printf("List size: %d\n\n", ft_list_size(ptr));
	ft_list_sort(&ptr, ft_strcmp);
	while (ptr)
	{
		printf("%s\n", ptr->data);
		ptr = ptr->next;
	}
	return (0);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   simple_tests.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/18 05:43:21 by sgardner          #+#    #+#             */
/*   Updated: 2018/10/18 06:04:11 by sgardner         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test_libfts.h"
#include "libfts.h"
#include <ctype.h>
#include <stdio.h>
#include <string.h>

void	test_bzero(void)
{
	static char	arr[43] = "This is a test string that will be zeroed.";
	int			i;

	printf("ft_bzero:\n--------\n");
	printf("Original: ");
	i = 0;
	while (i < (int)sizeof(arr))
		printf("%.2hhX ", arr[i++]);
	ft_bzero(arr, sizeof(arr));
	printf("\n  Zeroed: ");
	i = 0;
	while (i < (int)sizeof(arr))
		printf("%.2hhX ", arr[i++]);
	printf("\n\n");
}

void	test_case(char *title, int (*f)(int c))
{
	int		i;
	int		j;
	int		n;
	char	c;

	printf("%s:\n----------\n", title);
	i = 0;
	n = 0;
	while (i <= 255)
	{
		(isprint(i)) ? printf("%2c ", (char)i) : printf("%.2X ", i);
		if (++n == 16)
		{
			printf("\n");
			j = i - 15;
			while (j <= i)
			{
				c = f(j++);
				printf("%2c ", (isprint(c)) ? c : '-');
			}
			printf("\n\n");
			n = 0;
		}
		++i;
	}
}

void	test_ctype(char *title, int (*f)(int c))
{
	int	i;
	int	j;
	int	n;

	printf("%s:\n----------\n", title);
	i = 0;
	n = 0;
	while (i <= 255)
	{
		(isprint(i)) ? printf("%2c ", (char)i) : printf("%.2X ", i);
		if (++n == 16)
		{
			printf("\n");
			j = i - 15;
			while (j <= i)
				printf("%2c ", (f(j++)) ? 'x' : '-');
			printf("\n\n");
			n = 0;
		}
		++i;
	}
}

void	test_puts(void)
{
	int	res;

	printf("ft_puts:\n-------\n");
	fflush(stdout);
	res = ft_puts("Testing puts~!");
	printf("Result: %d\n\n", res);
}

void	test_strcat(void)
{
	char	arr[15];
	char	*res;

	printf("ft_strcat:\n---------\n");
	strcpy(arr, "A simple");
	printf("Original (%p): %s\n", &arr[0], arr);
	res = ft_strcat(arr, " test.");
	printf("After cat (%p): %s\n\n", res, res);
}

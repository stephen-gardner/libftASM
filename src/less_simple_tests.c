/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   less_simple_tests.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/18 05:51:23 by sgardner          #+#    #+#             */
/*   Updated: 2018/10/18 06:00:02 by sgardner         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test_libfts.h"
#include "libfts.h"
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

void	test_cat(void)
{
	int	fd;

	if ((fd = open("big.txt", O_RDONLY)) < 0)
		return ;
	ft_cat(fd);
	close(fd);
	printf("\nTesting on invalid file descriptor...");
	ft_cat(-42);
	printf(" success!\n");
}

void	test_memcpy(void)
{
	char	arr[14];
	char	*res;

	printf("ft_memcpy:\n---------\n");
	strcpy(arr, "old text");
	printf("Before (%p): %s\n", arr, arr);
	res = ft_memcpy(arr, "A test string", 14);
	printf("After (%p): %s\n\n", res, res);
}

void	test_memset(void)
{
	char	arr[14];
	char	*res;

	printf("ft_memset:\n---------\n");
	memcpy(arr, "A test string", 13);
	arr[13] = '\0';
	printf("Before (%p): %s\n", arr, arr);
	res = ft_memset(&arr[7], 'o', 6);
	printf("After (%p): %s\n", arr, arr);
	printf("Pointing at (%p): %s\n\n", res, res);
}

void	test_strdup(void)
{
	char	*orig;
	char	*dup;

	printf("ft_strdup:\n---------\n");
	orig = "This is a test string.";
	printf("Original (%p): %s\n", orig, orig);
	dup = ft_strdup(orig);
	printf("Dup (%p): %s\n\n", dup, dup);
	free(dup);
}

void	test_strlen(void)
{
	char	*str;

	str = "test string";
	printf("ft_strlen:\n---------\n");
	printf("Length of \"%s\": %zu\n", str, strlen(str));
	printf("Libfts result: %zu\n\n", ft_strlen(str));
}

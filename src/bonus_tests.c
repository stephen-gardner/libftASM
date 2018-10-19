/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   bonus_tests.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/18 06:29:05 by sgardner          #+#    #+#             */
/*   Updated: 2018/10/18 22:20:39 by sgardner         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test_libfts.h"
#include "libfts.h"
#include <stdio.h>
#include <string.h>

void		test_strchr(void)
{
	char	*str;
	char	*res;

	printf("ft_strchr:\n---------\n");
	str = "Text to search for this A letter.";
	printf("Source       (%p): %s\n\n", str, str);
	res = ft_strchr(str, 'A');
	printf("Seeking 'A'  (%p): %s\n", res, res);
	res = ft_strchr(str, 'T');
	printf("Seeking 'T'  (%p): %s\n", res, res);
	res = ft_strchr(str, 'r');
	printf("Seeking 'r'  (%p): %s\n", res, res);
	res = ft_strchr(str, '.');
	printf("Seeking '.'  (%p): %s\n", res, res);
	res = ft_strchr(str, '\0');
	printf("Seeking '\\0' (%p): %s\n", res, res);
	res = ft_strchr(str, 'z');
	printf("Seeking 'z'  (%p): %s\n", res, res);
	printf("\n");
}

static void	run_strcmp(const char *s1, const char *s2)
{
	printf("s1: \"%s\"\ns2: \"%s\"\n", s1, s2);
	printf(" stdlib: %d\n", strcmp(s1, s2));
	printf(" libfts: %d\n\n", ft_strcmp(s1, s2));
}

void		test_strcmp(void)
{
	printf("ft_strcmp:\n---------\n");
	run_strcmp("equal", "equal");
	run_strcmp("string1", "string2");
	run_strcmp("string2", "string1");
	run_strcmp("string", "string_longer");
	run_strcmp("string_longer", "string");
	run_strcmp("", "");
	run_strcmp("", "string");
	run_strcmp("string", "");
}

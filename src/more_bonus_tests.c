/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   more_bonus_tests.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/20 18:18:47 by sgardner          #+#    #+#             */
/*   Updated: 2018/10/20 23:12:41 by sgardner         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test_libfts.h"
#include "libfts.h"
#include <stdio.h>
#include <stdlib.h>

static void	run_substr(const char *str, size_t start, size_t len)
{
	char	*res;

	printf("Input (%p): %s\n", str, str);
	printf("Pos: %zu, Len: %zu\n", start, len);
	if (!(res = ft_strsub(str, start, len)))
		return ;
	printf("Result (%p): %s\n\n", res, res);
	free(res);
}

void		test_strsub(void)
{
	printf("ft_strsub:\n---------\n");
	run_substr("This string contains A substring that will be cut out", 21, 11);
	run_substr("word", 0, 4);
	run_substr("Copy A letter", 5, 1);
	run_substr("Copy nothing", 5, 0);
	run_substr("", 0, 0);
}

static void	run_strtrim(const char *str)
{
	char	*res;

	printf("Input (%p):\n\"%s\"\n", str, str);
	if (!(res = ft_strtrim(str)))
		return ;
	printf("Result (%p):\n\"%s\"\n\n", res, res);
	free(res);
}

void		test_strtrim(void)
{
	printf("ft_strtrim:\n----------\n");
	run_strtrim("   \x0C  \t  \t\t string to trim\t   \v\n  ");
	run_strtrim(" simple ");
	run_strtrim("no_whitespace");
	run_strtrim("z");
	run_strtrim("          \t ");
	run_strtrim("\f");
	run_strtrim("");
}

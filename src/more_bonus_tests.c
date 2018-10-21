/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   more_bonus_tests.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/20 18:18:47 by sgardner          #+#    #+#             */
/*   Updated: 2018/10/20 22:24:52 by sgardner         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test_libfts.h"
#include "libfts.h"
#include <stdio.h>
#include <stdlib.h>

static void	run_strtrim(const char *str)
{
	char	*res;

	printf("Input:\n\"%s\"\n", str);
	res = ft_strtrim(str);
	printf("Result:\n\"%s\"\n\n", res);
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

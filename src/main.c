/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/18 05:09:48 by sgardner          #+#    #+#             */
/*   Updated: 2018/10/18 15:54:21 by sgardner         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test_libfts.h"
#include "libfts.h"
#include <stdio.h>
#include <string.h>

static void	run_simple(void)
{
	test_ctype("ft_isdigit", ft_isdigit);
	test_ctype("ft_isalpha", ft_isalpha);
	test_ctype("ft_isalnum", ft_isalnum);
	test_ctype("ft_isprint", ft_isprint);
	test_ctype("ft_isascii", ft_isascii);
	test_case("ft_toupper", ft_toupper);
	test_case("ft_tolower", ft_tolower);
	test_bzero();
	test_strcat();
	test_puts();
}

static void	run_less_simple(void)
{
	test_strlen();
	test_memset();
	test_memcpy();
	test_strdup();
}

static void	run_bonus(void)
{
	test_strcmp();
}

int			main(int ac, char *av[])
{
	if (ac != 2)
	{
		fprintf(stderr, "Usage: test <simple | less | cat | bonus>\n");
		return (1);
	}
	if (!strcmp(av[1], "simple"))
		run_simple();
	else if (!strcmp(av[1], "less"))
		run_less_simple();
	else if (!strcmp(av[1], "cat"))
		test_cat();
	else if (!strcmp(av[1], "bonus"))
		run_bonus();
	return (0);
}

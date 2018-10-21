/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_libfts.h                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/18 05:46:56 by sgardner          #+#    #+#             */
/*   Updated: 2018/10/20 22:52:22 by sgardner         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TEST_LIBFTS_H
# define TEST_LIBFTS_H

/*
** simple_tests.c
*/

void	test_bzero(void);
void	test_case(char *title, int (*f)(int c));
void	test_ctype(char *title, int (*f)(int c));
void	test_puts(void);
void	test_strcat(void);

/*
** less_simple_tests.c
*/

void	test_cat(void);
void	test_memcpy(void);
void	test_memset(void);
void	test_strdup(void);
void	test_strlen(void);

/*
** bonus_tests.c
*/

void	test_strchr(void);
void	test_strcmp(void);
void	test_strsplit(void);

/*
** more_bonus_tests.c
*/

void	test_strsub(void);
void	test_strtrim(void);
#endif

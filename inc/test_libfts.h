/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_libfts.h                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/18 05:46:56 by sgardner          #+#    #+#             */
/*   Updated: 2018/10/19 05:42:14 by sgardner         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TEST_LIBFTS_H
# define TEST_LIBFTS_H

/*
** Simple tests
*/

void	test_bzero(void);
void	test_case(char *title, int (*f)(int c));
void	test_ctype(char *title, int (*f)(int c));
void	test_puts(void);
void	test_strcat(void);

/*
** Less simple tests
*/

void	test_cat(void);
void	test_memcpy(void);
void	test_memset(void);
void	test_strdup(void);
void	test_strlen(void);

/*
** Bonus tests
*/

void	test_strchr(void);
void	test_strcmp(void);
void	test_strsplit(void);
#endif

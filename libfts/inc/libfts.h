/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/18 05:17:10 by sgardner          #+#    #+#             */
/*   Updated: 2018/10/18 15:54:01 by sgardner         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H
# include <stddef.h>

/*
** Simple
*/

void	ft_bzero(void *s, size_t n);
int		ft_isalnum(int c);
int		ft_isalpha(int c);
int		ft_isascii(int c);
int		ft_isdigit(int c);
int		ft_isprint(int c);
int		ft_puts(const char *s);
char	*ft_strcat(char *s1, const char *s2);
int		ft_tolower(int c);
int		ft_toupper(int c);

/*
** Less simple
*/

void	ft_cat(int fd);
void	*ft_memcpy(void *dst, const void *src, size_t n);
void	*ft_memset(void *b, int c, size_t len);
char	*ft_strdup(const char *s1);
size_t	ft_strlen(const char *s);

/*
** Bonus
*/

int		ft_strcmp(const char *s1, const char *s2);
#endif

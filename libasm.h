/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: user42 <user42@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/27 15:11:29 by user42            #+#    #+#             */
/*   Updated: 2020/12/05 23:28:40 by user42           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# include <sys/types.h>

ssize_t		ft_read(int fd, void *buf, size_t count);
int			ft_strcmp(const char *s1, const char *s2);
char		*ft_strcpy(char *dest, const char *src);
char		*ft_strdup(const char *s);
size_t		ft_strlen(const char *s);
ssize_t		ft_write(int fd, const void *buf, size_t count);
int			ft_atoi_base(char *str, char *base);

#endif

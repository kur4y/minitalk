/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tanota <tanota@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/06/21 13:15:31 by tanota            #+#    #+#             */
/*   Updated: 2023/06/21 17:49:48 by tanota           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	char	*sub;
	size_t	i;
	size_t	j;
	size_t	slen;

	slen = ft_strlen(s);
	i = 0;
	j = 0;
	if (start < slen)
		i = slen - start;
	if (i > len)
		i = len;
	sub = malloc((i + 1) * sizeof(char));
	if (!sub)
		return (0);
	while (j < i)
	{
		sub[j] = s[start + j];
		j++;
	}
	sub[j] = '\0';
	return (sub);
}

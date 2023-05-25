/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   list.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: annabrag <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/08 12:57:10 by annabrag          #+#    #+#             */
/*   Updated: 2023/05/08 13:07:39 by annabrag         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIST_H
# define LIST_H

# include <stdio.h>
# include <stdlib.h>

typedef struct Cell_t
{
	int				data;
	struct Cell_t 	*next;
}	List, Cell;

List	*emptyList(void);
int		isEmptyList(List *L);
long	lenList(List *L);
List	*addAt(List *L, int, int);
int		getAt(List *L, int);
void	setAt(List *L, int, int);
List	*freeAt(List *L, int);
List	*freeList(List *L);
void	printList(List *L);

#endif

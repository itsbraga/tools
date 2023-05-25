/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   lists.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: annabrag <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/08 12:55:38 by annabrag          #+#    #+#             */
/*   Updated: 2023/05/08 13:24:57 by annabrag         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "list.h"

List	*emptyList(void)
{
	return (NULL);
}

int		isEmptyList(List *L)
{
	return (L == NULL);
}

static Cell	*createCell(int data)
{
	Cell	*cell = malloc(sizeof(Cell));
	if (!cell)
		return (NULL);
	cell->data = data;
	cell->next = NULL;
	return (cell);
}

List	*addAt(List *L, int data, int pos)
{
	List	*prec = L;
	List	*cur = L;
	int		i = 0;
	Cell	*cell = createCell(data);
	if (isEmptyList(L))
		return (cell);
	if (pos == 0)
	{
		cell->next = L;
		return (cell);
	}
	i = 0;
	while (i < pos)
	{
		i++;
		prec = cur;
		cur = cur->next;
	}
	prec->next = cell;
	cell->next = cur;
	return (L);
}

int		getAt(List *L, int pos)
{
	int	i = 0;
	if (isEmptyList(L))
	{
		puts("Liste vide\n");
		return (-1);
	}
	while (i < pos)
	{
		i++;
		L = L->next;
	}
	return (L->data);
}

void	setAt(List *L, int data, int pos)
{
	int	i = 0;
	if (isEmptyList(L))
    {
        puts("Liste vide\n");
        return ;
    }
    while (i < pos)
    {
        i++;
        L = L->next;
    }
    L->data = data;
	return (L);
}

List *freeAt(List *L, int pos)
{
	List	*prec = L;
	List	*cur = L;
	int		i;
	if (isEmptyList(L))
        return (cell);
	if (pos == 0)
    {
        L = L->next;
		free(cur);
        return L;
    }
    i = 0;
    while (i < pos)
    {   
        i++;
        prec = cur;
        cur = cur->next;
    }
    prec->next = cur->next;
    free(cur);
    return (L);
}

void	printList(List *L)
{
	while (L)
	{
		printf("%d ", L->data);
		L = L->next;
	}
	puts("\n");
}

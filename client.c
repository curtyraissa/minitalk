/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rcurty-g <rcurty-g@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/18 14:19:00 by rcurty-g          #+#    #+#             */
/*   Updated: 2024/12/20 13:56:00 by rcurty-g         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <signal.h>
#include "libft/libft.h"

static void	ft_message(int target_pid, char *message)
{
	int		bit_position;
	char	ch;

	while (*message)
	{
		ch = *message;
		bit_position = sizeof(char) * 8;
		while (bit_position--)
		{
			if ((ch >> bit_position) & 1)
				kill(target_pid, SIGUSR1);
			else
				kill(target_pid, SIGUSR2);
			usleep(500);
		}
		message++;
	}
}

int	main(int ac, char **av)
{
	int	target_pid;

	if (ac != 3)
	{
		ft_printf("Usage: ./client <server_pid> <message>\n");
		exit (1);
	}
	target_pid = ft_atoi(av[1]);
	if (kill(target_pid, 0))
	{
		ft_printf("Invalid PID\n");
		exit(1);
	}
	ft_message(target_pid, "Client: ");
	ft_message(target_pid, av[2]);
	ft_message(target_pid, "\n");
}

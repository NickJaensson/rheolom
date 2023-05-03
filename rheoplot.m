function [] = rheoplot(type,user)

    if strcmp(type,'transient')

        figure; 
        plot(user.time_all,user.stress_all(2,:)/user.rate,'LineWidth',2)
        set(gca,'FontSize',16);
        set(gca,'xscale','linear')
        set(gca,'yscale','linear')
        title('Transient shear viscosity $\eta(t)$','Interpreter','LaTeX','FontSize',24)
        x = xlabel('$t$','FontSize',28); % x-axis label
        y = ylabel('$ \eta $','FontSize',28); % y-axis label
        set(x, 'interpreter', 'LaTeX')
        set(y, 'interpreter', 'LaTeX')

    elseif strcmp(type,'steady')

        figure; 
        plot(user.rates,user.stress_all(2,:)./user.rates,'LineWidth',2)
        set(gca,'FontSize',16);
        set(gca,'xscale','log')
        set(gca,'yscale','log')
        title('Steady shear viscosity $\eta(\dot{\gamma})$','Interpreter','LaTeX','FontSize',24)
        x = xlabel('$\dot{\gamma}$','FontSize',28); % x-axis label
        y = ylabel('$ \eta $','FontSize',28); % y-axis label
        set(x, 'interpreter', 'LaTeX')
        set(y, 'interpreter', 'LaTeX')

    elseif strcmp(type,'transient_stress')

        figure; 
        plot(user.time_all,user.strain_all,'LineWidth',2)
        set(gca,'FontSize',16);
        set(gca,'xscale','linear')
        set(gca,'yscale','linear')
        title('Transient strain for imposed stress','Interpreter','LaTeX','FontSize',24)
        x = xlabel('$\dot{\gamma}$','FontSize',28); % x-axis label
        y = ylabel('$ \eta $','FontSize',28); % y-axis label
        set(x, 'interpreter', 'LaTeX')
        set(y, 'interpreter', 'LaTeX')
    

    end

end

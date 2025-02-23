function [torque_t, torque_v, torque_e] = get_torque(theta)

% Inputs
% theta: x1, the ankle joint angle
% q_dot??

% Output
% torque_t: active torque from electrical stimulation
% torque_v: passive torque from muscleps viscous force
% torque_e: passive torque from elastic force


% Passive torque parameters
a_1k = 2.1016;
b_1k = -0.0843;
a_2k = -7.9763;
b_2k = 0.1949;
c = -1.792;
K = -1;
d = 0.1;
n = 0.099;

torque_t = gamma_ma*f_t;

torque_e = e^(a_1k + b_1k*theta) - e^(a_2k + b_2k*x1) + c;

torque_v = K*sign(q_dot)*(d*abs(q_dot))^n;


end
function out = receiveArdupilot()
persistent receiver last
if isempty(receiver)
      receiver = dsp.UDPReceiver('MessageDataType','single','LocalIPPort',9002,'MaximumMessageLength',64,'RemoteIPAddress','127.0.0.1');
      last = single(zeros(16,1));
end
    out = receiver();
if isempty(out)
    out = last;
else
    last = out;
end
end
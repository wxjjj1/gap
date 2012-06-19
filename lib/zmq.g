#############################################################################
##
#W  zmq.g                    GAP library                  Reimer Behrends
##
#Y  Copyright (C)  1997,  Lehrstuhl D fuer Mathematik,  RWTH Aachen,  Germany
#Y  (C) 1998 School Math and Comp. Sci., University of St.  Andrews, Scotland
#Y  Copyright (C) 2002 The GAP Group
##
##  Additional ease-of-use primitives for using ZeroMQ.
##

DeclareFilter("IsZmqSocket", IsObject and IsInternalRep);
BindGlobal("TYPE_ZMQ_SOCKET", NewType(SynchronizationFamily, IsZmqSocket));

BindGlobal("ZmqAttach", function(socket, addr)
  if addr <> "" and addr[1] = '+' then
    ZmqConnect(socket, addr{[2..Length(addr)]});
  else
    ZmqBind(socket, addr);
  fi;
end);

BindGlobal("ZmqAttachedSocket", function(type, args)
  local socket, nargs;
  nargs := Length(args);
  socket := ZmqSocket(type);
  if nargs = 0 then
  elif nargs = 1 then
    ZmqAttach(socket, args[1]);
  elif nargs = 2 then
    ZmqSetIdentity(socket, args[2]);
    ZmqAttach(socket, args[1]);
  else
    Error("ZmqAttachedSocket: Too many arguments");
  fi;
  return socket;
end);

BindGlobal("ZmqPushSocket", function(arg)
  return ZmqAttachedSocket("PUSH", arg);
end);

BindGlobal("ZmqPullSocket", function(arg)
  return ZmqAttachedSocket("PULL", arg);
end);

BindGlobal("ZmqRequestSocket", function(arg)
  return ZmqAttachedSocket("REQ", arg);
end);

BindGlobal("ZmqReplySocket", function(arg)
  return ZmqAttachedSocket("REP", arg);
end);

BindGlobal("ZmqDealerSocket", function(arg)
  return ZmqAttachedSocket("DEALER", arg);
end);

BindGlobal("ZmqRouterSocket", function(arg)
  return ZmqAttachedSocket("ROUTER", arg);
end);

BindGlobal("ZmqPublisherSocket", function(arg)
  return ZmqAttachedSocket("PUB", arg);
end);

BindGlobal("ZmqSubscriberSocket", function(arg)
  return ZmqAttachedSocket("SUB", arg);
end);

BindGlobal("ZmqReceiveAllAsString", function(socket, sep)
  local parts;
  parts := ZmqReceiveAll(socket);
  return JoinStringsWithSeparator(parts, sep);
end);

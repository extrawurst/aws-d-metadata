import std.stdio;

import awsd.metadata;

shared static this()
{
	writefln("%s", Ec2GetMetaData("/latest/meta-data/"));
	writefln("instance-id: %s", Ec2GetInstanceId());
}

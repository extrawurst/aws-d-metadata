import std.stdio;

import awsd.metadata;

shared static this()
{
	writefln("%s", GetAwsData("/latest/meta-data/"));
	writefln("instance-id: %s", GetInstanceId());
}

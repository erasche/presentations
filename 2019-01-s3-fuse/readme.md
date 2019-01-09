# S3 FUSE Paper



- S3 intro
- Comparison / Rationale (Price)
- POSIX Compliance
	- s3fuse: including reading/writing files, directories, symlinks, mode, uid/gid, and extended attributes
	- gooyfs makes other tradeoffs https://github.com/kahing/goofys
	- "s3fs-fuse is a one-to-one mapping and doesn't do things like atomic rename of directories, mutual exclusion of open exclusive, append to file requires rewriting the whole file and no hard links. This breaks the expectations of many linux programs." https://news.ycombinator.com/item?id=10117506
	- https://github.com/s3ql/s3ql
- Problems
	- Eventual consistency / storage classes
	- network
		- https://aws.amazon.com/blogs/architecture/exponential-backoff-and-jitter/
	- performance
		- https://github.com/s3fs-fuse/s3fs-fuse/issues/158
- Other stuff
	- S3QL
	- S3 CAS

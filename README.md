# `typescript-eslint` `no-unsafe-return` bug reproduction

```bash
# Install dependencies in both folders
./install.sh

# Runs tsc and eslint in both folders
./tests.sh
```

The contents of the folders are exactly the same, except for the TypeScript version. I spent several hours reducing my code down to what's left; the error goes away if I remove pretty much any of the remaining code.

https://github.com/typescript-eslint/typescript-eslint/issues/5364 is possibly the same issue?

Here's the output for me:

```
Running 4.7 tsc...

> tsc
> tsc

Running 4.7 tsc:skipLibCheck...

> tsc
> tsc "--skipLibCheck"

Running 4.7 eslint...

> lint
> eslint .

Running 4.8 tsc...

> tsc
> tsc

Running 4.8 tsc:skipLibCheck...

> tsc
> tsc "--skipLibCheck"

code.ts:17:37 - error TS2339: Property 'count' does not exist on type 'never'.

17   (await Promise.all([promise]))[0].count;
                                       ~~~~~


Found 1 error in code.ts:17

Running 4.8 eslint...

> lint
> eslint .


/Users/atuggle/Projects/ts-eslint-unsafe-bug-repro/ts4.8/code.ts
  17:3  error  Unsafe return of an `any` typed value  @typescript-eslint/no-unsafe-return

✖ 1 problem (1 error, 0 warnings)
```

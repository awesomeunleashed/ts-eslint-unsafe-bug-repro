import type { ReactNode } from "react";

const f1 = (arg: ReactNode) => {
  f2(arg) && "";
  f2(arg);
};

const f2 = (
  node: ReactNode
): node is Exclude<ReactNode, boolean | null | undefined> => false;

interface Response {
  count: number;
}

const f3 = async (promise: Promise<Response>) =>
  (await Promise.all([promise]))[0].count;

"Array"     use
"String"    use
"algorithm" use
"control"   use

TestConfig: {
  name: "test-project" toString;
  version: "1.0.0" toString;
  dependencies: (
    "mpl-utils" toString,
    "mpl-core" toString
  ) toArray;
  settings: {
    debug: TRUE;
    verbose: FALSE;
    maxThreads: 4;
  };
};

formatText: [text: String;] String {
  [text "" =] [
    ""
  ] [
    text "Hello" = [
      "World"
    ] [
      text
    ] when
  ] when
} "formatText" exportFunction;

processData: [data: Array;] Array {
  result: Array;
  [data.size 0 >] [
    item: data.at 0;
    [item "test" =] [
      result: ("success" toString) result.cat;
    ] [
      result: ("error" toString) result.cat;
    ] when
  ] [
    result: ("empty" toString) result.cat;
  ] when
  result
};

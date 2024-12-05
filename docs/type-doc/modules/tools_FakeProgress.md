[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/FakeProgress

# Module: tools/FakeProgress

## Table of contents

### Classes

- [FakeProgress](../classes/tools_FakeProgress.FakeProgress.md)

### Type Aliases

- [FakeProgressOpts](tools_FakeProgress.md#fakeprogressopts)

## Type Aliases

### FakeProgressOpts

Ƭ **FakeProgressOpts**: `Object`

#### Type declaration

| Name | Type | Description |
| :------ | :------ | :------ |
| `autoStart?` | `boolean` | 是否自动开始 **`Default`** ```ts true ``` |
| `initialProgress?` | `number` | 初始进度 **`Default`** ```ts 0 ``` |
| `onChange?` | (`progress`: `number`) => `void` | - |
| `timeConstant?` | `number` | 时间系数，毫秒为单位 **`Default`** ```ts 10000 ``` |

#### Defined in

[src/tools/FakeProgress.ts:74](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/FakeProgress.ts#L74)

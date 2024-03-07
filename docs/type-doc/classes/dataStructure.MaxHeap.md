[@jl-org/tool](../README.md) / [Modules](../modules.md) / [dataStructure](../modules/dataStructure.md) / MaxHeap

# Class: MaxHeap\<T\>

[dataStructure](../modules/dataStructure.md).MaxHeap

最大堆算法

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `HeapItem` |

## Table of contents

### Constructors

- [constructor](dataStructure.MaxHeap.md#constructor)

### Properties

- [data](dataStructure.MaxHeap.md#data)

### Accessors

- [size](dataStructure.MaxHeap.md#size)

### Methods

- [isEmpty](dataStructure.MaxHeap.md#isempty)
- [peek](dataStructure.MaxHeap.md#peek)
- [pop](dataStructure.MaxHeap.md#pop)
- [push](dataStructure.MaxHeap.md#push)

## Constructors

### constructor

• **new MaxHeap**\<`T`\>(): [`MaxHeap`](dataStructure.MaxHeap.md)\<`T`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `HeapItem` |

#### Returns

[`MaxHeap`](dataStructure.MaxHeap.md)\<`T`\>

#### Defined in

dataStructure/Heap.ts:120

## Properties

### data

• `Readonly` **data**: `T`[]

#### Defined in

dataStructure/Heap.ts:118

## Accessors

### size

• `get` **size**(): `number`

#### Returns

`number`

#### Defined in

dataStructure/Heap.ts:124

## Methods

### isEmpty

▸ **isEmpty**(): `boolean`

#### Returns

`boolean`

#### Defined in

dataStructure/Heap.ts:128

___

### peek

▸ **peek**(): `T`

返回堆顶的值

#### Returns

`T`

#### Defined in

dataStructure/Heap.ts:133

___

### pop

▸ **pop**(): `T`

删除并返回堆顶的值

#### Returns

`T`

#### Defined in

dataStructure/Heap.ts:142

___

### push

▸ **push**(`...items`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `...items` | `T`[] |

#### Returns

`void`

#### Defined in

dataStructure/Heap.ts:137

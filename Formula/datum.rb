# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Datum < Formula
  desc "datum is the client CLI for interacting with Datum Server"
  homepage "https://github.com/datumforge/datum"
  version "0.6.8"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/datumforge/datum/releases/download/v0.6.8/datum_0.6.8_darwin_amd64.tar.gz"
      sha256 "e15b6cbefbaa18872fea16432655da4aa5382726a1d6c4caf97a316e0aa49127"

      def install
        bin.install "datum"
      end
    end
    on_arm do
      url "https://github.com/datumforge/datum/releases/download/v0.6.8/datum_0.6.8_darwin_arm64.tar.gz"
      sha256 "d926d9b5b524ef176beb05b02bd96e05039006dc1c4f3c4534dd4e70e6806e32"

      def install
        bin.install "datum"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/datumforge/datum/releases/download/v0.6.8/datum_0.6.8_linux_amd64.tar.gz"
        sha256 "ce21ad6aa70dee0671a7a1ce0104155c75a63ce4c64138c3fa51e31628db0d18"

        def install
          bin.install "datum"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/datumforge/datum/releases/download/v0.6.8/datum_0.6.8_linux_arm64.tar.gz"
        sha256 "805d5230b7276d6403774165441558983cb6e97eb2ecd5fe4efdede625e4f863"

        def install
          bin.install "datum"
        end
      end
    end
  end

  test do
    system "#{bin}/datum --help"
  end
end
